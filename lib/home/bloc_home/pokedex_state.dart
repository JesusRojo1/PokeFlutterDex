part of 'pokedex_bloc.dart';

@immutable
abstract class PokedexState extends Equatable {
  const PokedexState();
}

class PokedexInitial extends PokedexState {

  const PokedexInitial();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetAllDataPokedexState extends PokedexState {
  final HomeModel data;

  const GetAllDataPokedexState(this.data);

  @override
  List<Object?> get props => [data];
}

class GetSpecificPokemonState extends PokedexState {
  final DataPokemonModel dataPokemon;

  const GetSpecificPokemonState(this.dataPokemon);

  @override
  List<Object?> get props => [dataPokemon];
}
