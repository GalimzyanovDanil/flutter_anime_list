import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_list/api/dto/anime_list_request_dto.dart';
import 'package:flutter_anime_list/api/dto/anime_list_response.dart';
import 'package:flutter_anime_list/di/app_scope.dart';
import 'package:provider/provider.dart';

@RoutePage()
class AnimeListScreen extends StatefulWidget {
  const AnimeListScreen({super.key});

  @override
  State<AnimeListScreen> createState() => _AnimeListScreenState();
}

class _AnimeListScreenState extends State<AnimeListScreen> {
  final _animeListNotifier = ValueNotifier<List<AnimeDto>>(const []);

  ValueNotifier<List<AnimeDto>> get animeListNotifier => _animeListNotifier;

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext _) => _AnimeListView(this);

  Future<void> init() async {
    final api = context.read<AppScope>().api;
    final aniList = await api.fetchAnimeList(const AnimeListRequestDto());
    final list = aniList.data.map((e) => e.node).toList();
    _animeListNotifier.value = list;
  }
}

class _AnimeListView extends StatelessWidget {
  /// Controller.
  final _AnimeListScreenState controller;

  const _AnimeListView(this.controller);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime List'),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: controller.animeListNotifier,
          builder: (context, value, child) => RefreshIndicator.adaptive(
            onRefresh: controller.init,
            child: ListView.separated(
              itemCount: value.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(value[index].title),
                leading: Text(value[index].id.toString()),
                trailing: Image.network(value[index].mainPicture.medium),
              ),
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
        ),
      ),
    );
  }
}
