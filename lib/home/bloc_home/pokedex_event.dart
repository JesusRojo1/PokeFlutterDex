part of 'pokedex_bloc.dart';

@immutable
abstract class PokedexEvent extends Equatable {
  const PokedexEvent();
}

class GetAllDataPokedexEvent extends PokedexEvent {

  const GetAllDataPokedexEvent();

  @override
  List<Object?> get props => [];
}

class GetSpecificPokemonEvent extends PokedexEvent {
  final String? urlPokemonData;

  const GetSpecificPokemonEvent(this.urlPokemonData);

  @override
  List<Object?> get props => [urlPokemonData];
}
