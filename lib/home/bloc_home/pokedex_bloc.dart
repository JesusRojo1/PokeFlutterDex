import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:pokedextest/home/home_providers/api_repository_pokedex.dart';
import 'package:pokedextest/home/models/data_pokemon_model.dart';
import 'package:pokedextest/home/models/home_model.dart';

part 'pokedex_event.dart';

part 'pokedex_state.dart';

final ApiRepositoryPokedex _apiRepository = ApiRepositoryPokedex();

class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  late HomeModel getAllDataPokedex;
  late DataPokemonModel getDataPokemon;

  PokedexBloc() : super(PokedexInitial()) {
    on<GetAllDataPokedexEvent>((event, emit) async {
      try {
        getAllDataPokedex = (await _apiRepository.getDataPokedex())!;
        emit(GetAllDataPokedexState(getAllDataPokedex));
      } catch (e) {
        debugPrint("$e");
      }
    });

    on<GetSpecificPokemonEvent>((event, emit) async {
      final String? endpoint = event.urlPokemonData;
      try {
        getDataPokemon = (await _apiRepository.getDataPokemon(endpoint))!;
        emit(GetSpecificPokemonState(getDataPokemon));
      } catch (e) {
        debugPrint("$e");
      }
    });
  }
}
