
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedextest/constants.dart';
import 'package:pokedextest/home/bloc_home/pokedex_bloc.dart';
import 'package:pokedextest/home/home_widgets/home_view.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final heightCurrent = MediaQuery.of(context).size.height;
    final widthCurrent = MediaQuery.of(context).size.width;
    final PokedexBloc pokedexBloc = PokedexBloc();
    pokedexBloc.add(const GetAllDataPokedexEvent());
    return BlocProvider(
      create: (_) => pokedexBloc,
      child: BlocBuilder<PokedexBloc, PokedexState>(
        builder: (context, state) {
          if (state is GetAllDataPokedexState) {
            return HomeView(
              data: state.data,
            );
          } else if (state is GetSpecificPokemonState) {
            return HomeView(
              dataPokemon: state.dataPokemon,
            );
          } else {
            return HomeView();
          }
        },
      ),
    );
  }

}