import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedextest/constants.dart';
import 'package:pokedextest/home/bloc_home/pokedex_bloc.dart';
import 'package:pokedextest/home/home_widgets/home_view.dart';
import 'package:pokedextest/home/home_widgets/list_tile_custom.dart';
import 'package:pokedextest/home/home_widgets/specific_data.dart';
import 'package:pokedextest/home/models/data_pokemon_model.dart';
import 'package:pokedextest/home/models/home_model.dart';

class ScreenHome extends StatelessWidget {
  final HomeModel? data;
  final DataPokemonModel? dataPokemon;

  const ScreenHome({this.data, this.dataPokemon});

  @override
  Widget build(BuildContext context) {
    final heightCurrent = MediaQuery.of(context).size.height;
    final widthCurrent = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: heightCurrent * 0.4,
          width: widthCurrent * 0.85,
          decoration: BoxDecoration(
            color: Constants.primaryWhite,
            border: Border.all(color: Constants.primaryBlack, width: 4),
          ),
        ),
        Positioned(
          left: widthCurrent * 0.07,
          bottom: heightCurrent * 0.04,
          top: heightCurrent * 0.04,
          child: data != null || dataPokemon != null
              ? Container(
                  height: heightCurrent * 0.4,
                  width: widthCurrent * 0.7,
                  decoration: BoxDecoration(
                      color: Constants.secondGreen,
                      border:
                          Border.all(color: Constants.thirdGreen, width: 3)),
                  child: dataPokemon == null
                      ? ListView.builder(
                          itemCount: data?.results?.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                BlocProvider.of<PokedexBloc>(context).add(
                                    GetSpecificPokemonEvent(
                                        data?.results?[index].url));
                              },
                              child: Stack(
                                children: [
                                  ListTileCustom(
                                    title: Text(
                                      "${data?.results?[index].name}",
                                      textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                        fontFamily: Constants.pokemonGB,
                                        fontSize: Constants.textFont12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing:
                                            Constants.letterSpacingText,
                                        color: Constants.primaryBlack,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                      : SpecificData(specificData: dataPokemon),
                )
              : Container(
                  height: heightCurrent * 0.4,
                  width: widthCurrent * 0.7,
                  decoration: BoxDecoration(
                    color: Constants.secondGreen,
                    border: Border.all(color: Constants.thirdGreen, width: 3),
                  ),
                ),
        ),
      ],
    );
  }
}
