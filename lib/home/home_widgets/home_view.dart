import 'package:flutter/material.dart';
import 'package:pokedextest/constants.dart';
import 'package:pokedextest/home/home_widgets/buttons_home.dart';
import 'package:pokedextest/home/home_widgets/screen_home.dart';
import 'package:pokedextest/home/models/data_pokemon_model.dart';
import 'package:pokedextest/home/models/home_model.dart';

import 'leds_home.dart';

class HomeView extends StatelessWidget {
  final HomeModel? data;
  final DataPokemonModel? dataPokemon;

  const HomeView({this.data, this.dataPokemon});

  @override
  Widget build(BuildContext context) {
    final heightCurrent = MediaQuery.of(context).size.height;
    final widthCurrent = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.primaryRed,
      body: SafeArea(
        child: Container(
          height: heightCurrent,
          width: widthCurrent,
          color: Constants.primaryRed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LedsHome(),
              SizedBox(height: heightCurrent * 0.03),
              data == null && dataPokemon == null
                  ? ScreenHome()
                  : ScreenHome(data: data, dataPokemon: dataPokemon),
              SizedBox(height: heightCurrent * 0.05),
              ButtonsHome()
            ],
          ),
        ),
      ),
    );
  }
}
