import 'package:dio/dio.dart';
import 'package:flutter_anime_list/api/dto/anime_list_request_dto.dart';
import 'package:flutter_anime_list/api/dto/anime_list_response.dart';
import 'package:flutter_anime_list/api/dto/login_request_dto.dart';
import 'package:flutter_anime_list/api/dto/login_response_dto.dart';
import 'package:flutter_anime_list/api/dto/refresh_token_request_dto.dart';
import 'package:flutter_anime_list/api/urls.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi()
abstract class Api {
  factory Api(Dio dio) = _Api;

  @POST(Urls.token)
  Future<LoginResponseDto> authorization(
    @Body() LoginRequestDto request,
  );

  @POST(Urls.token)
  Future<LoginResponseDto> refreshingAccessToken(
    @Body() RefreshTokenRequestDto request,
  );

  @GET(Urls.animeList)
  Future<AnimeListResponse> fetchAnimeList(
    @Queries() AnimeListRequestDto request,
  );
}
