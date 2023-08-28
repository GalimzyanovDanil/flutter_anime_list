import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_list/core/constants.dart';
import 'package:flutter_anime_list/di/app_scope.dart';
import 'package:flutter_anime_list/navigation/app_router.dart';
import 'package:flutter_anime_list/persistance/secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  final String verifyCode;
  const AuthScreen({
    required this.verifyCode,
    Key? key,
  }) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late final WebViewController _controller;
  late final Uri uri;

  @override
  void initState() {
    super.initState();

    uri = Uri(
      scheme: 'https',
      host: 'myanimelist.net',
      path: '/v1/oauth2/authorize',
      queryParameters: {
        'response_type': 'code',
        'client_id': clientId,
        'code_challenge': widget.verifyCode,
      },
    );

    uri.origin;

    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onUrlChange: (UrlChange change) {
            final uri = Uri.tryParse(change.url ?? '');
            if (uri == null) return;
            if (uri.host == 'localhost') {
              final code = uri.queryParameters['code'];
              if (code == null) return;
              final localStorage = context.read<AppScope>().storage;
              localStorage.write(code, StorageQueryKey.authCode);
              context.router.replace(const InitRoute());
            }
          },
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        },
      )
      ..loadRequest(uri);

    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }

    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('TestFlutter f12345678',
            style: TextStyle(
              color: Colors.black,
            )),
        actions: <Widget>[
          NavigationControls(webViewController: _controller),
        ],
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}

class NavigationControls extends StatelessWidget {
  const NavigationControls({super.key, required this.webViewController});

  final WebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () async {
            if (await webViewController.canGoBack()) {
              await webViewController.goBack();
            } else {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('No back history item')),
                );
              }
            }
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
          onPressed: () async {
            if (await webViewController.canGoForward()) {
              await webViewController.goForward();
            } else {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('No forward history item')),
                );
              }
            }
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.replay,
            color: Colors.black,
          ),
          onPressed: () => webViewController.reload(),
        ),
      ],
    );
  }
}
