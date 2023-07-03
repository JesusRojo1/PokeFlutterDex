import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pokedextest/home/models/data_pokemon_model.dart';
import 'package:pokedextest/home/models/home_model.dart';

class ApiProviderPokedex {
  final Dio _dio = Dio();
  final String _url = "https://pokeapi.co/api/v2/";

  Future<HomeModel?> getDataPokedex() async {
    try {
      Response response = await _dio.get("${_url}pokemon?limit=151&offset=0");
      return HomeModel.fromJson(response.data);
    } on DioError catch (e) {
      debugPrint(
          "statusCode: ${e.response?.statusCode}, Message: ${e.response?.statusMessage}");
      return null;
    }
  }

  Future<DataPokemonModel?> getDataPokemon(String? endpoint) async {
    try {
      Response response = await _dio.get("$endpoint");
      return DataPokemonModel.fromJson(response.data);
    } on DioError catch (e) {
      debugPrint(
          "statusCode: ${e.response?.statusCode}, Message: ${e.response?.statusMessage}");
      return null;
    }
  }
}
