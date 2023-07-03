import 'package:pokedextest/home/models/data_pokemon_model.dart';
import 'package:pokedextest/home/models/home_model.dart';

import 'api_provider_pokedex.dart';

class ApiRepositoryPokedex {
  final _provider = ApiProviderPokedex();

  Future<HomeModel?> getDataPokedex() {
    return _provider.getDataPokedex();
  }

  Future<DataPokemonModel?> getDataPokemon(String? endpoint) {
    return _provider.getDataPokemon(endpoint);
  }

}

class NetworkError extends Error {}