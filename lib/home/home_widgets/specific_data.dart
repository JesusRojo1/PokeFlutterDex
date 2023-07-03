import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedextest/home/home_widgets/list_tile_custom.dart';

import '../../constants.dart';

class SpecificData extends StatelessWidget {
  final specificData;

  const SpecificData({this.specificData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Constants.paddingOnlyRight5Left5,
      child: Column(
        children: [
          SizedBox(height: Constants.sizeBoxHeight4),
          //Column for name, and characteristics of pokemon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 90,
                width: 122,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "${specificData.name}",
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontFamily: Constants.pokemonGB,
                            fontSize: Constants.textFont12,
                            fontWeight: FontWeight.w400,
                            letterSpacing: Constants.letterSpacingText,
                            color: Constants.primaryBlack,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: Constants.paddingOnlyRight7,
                          child: Text(
                            "Nº 00${specificData.order}",
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontFamily: Constants.pokemonGB,
                              fontSize: Constants.textFont12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: Constants.letterSpacingText,
                              color: Constants.primaryBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Constants.sizeBoxHeight4),
                    Row(
                      children: [
                        Text(
                          "Weight",
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontFamily: Constants.pokemonGB,
                            fontSize: Constants.textFont12,
                            fontWeight: FontWeight.w400,
                            letterSpacing: Constants.letterSpacingText,
                            color: Constants.primaryBlack,
                          ),
                        ),
                        Padding(
                          padding: Constants.paddingOnlyRight7,
                          child: Text(
                            "${specificData.weight}",
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontFamily: Constants.pokemonGB,
                              fontSize: Constants.textFont12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: Constants.letterSpacingText,
                              color: Constants.primaryBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Constants.sizeBoxHeight4),
                    Row(
                      children: [
                        Text(
                          "Height",
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontFamily: Constants.pokemonGB,
                            fontSize: Constants.textFont12,
                            fontWeight: FontWeight.w400,
                            letterSpacing: Constants.letterSpacingText,
                            color: Constants.primaryBlack,
                          ),
                        ),
                        Padding(
                          padding: Constants.paddingOnlyRight7,
                          child: Text(
                            "${specificData.height}",
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontFamily: Constants.pokemonGB,
                              fontSize: Constants.textFont12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: Constants.letterSpacingText,
                              color: Constants.primaryBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Column for type and image pokemon
              SizedBox(
                height: 90,
                width: 46,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Type",
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontFamily: Constants.pokemonGB,
                            fontSize: Constants.textFont12,
                            fontWeight: FontWeight.w400,
                            letterSpacing: Constants.letterSpacingText,
                            color: Constants.primaryBlack,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: Constants.sizeBoxHeight7),
                          ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: specificData.types.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Stack(
                                children: [
                                  SizedBox(height: Constants.sizeBoxHeight15),
                                  Text(
                                    "${specificData.types[index].type.name}",
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontFamily: Constants.pokemonGB,
                                      fontSize: Constants.textFont8,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing:
                                          Constants.letterSpacingText,
                                      color: Constants.primaryBlack,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                width: 68,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.network(
                            specificData.sprites.versions.generationIi.crystal
                                .frontTransparent,
                            width: 68),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          //Column for Generation you can find this pokemon
          // Row(
          //   children: [],
          // ),
          //Column for description this pokemon
          Row(
            children: [
              Container(
                height: 85,
                width: 235,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  border: Border.all(
                    color: Constants.primaryBlack,
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: Constants.sizeBoxHeight4),
                    Text(
                      "${specificData.name}, is a pokemon mainly type ${specificData.types.first.type.name}, one of ${specificData.name}'s movements mainly is ${specificData.moves.first.move.name}.",
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: Constants.pokemonGB,
                        fontSize: Constants.textFont8,
                        fontWeight: FontWeight.w400,
                        letterSpacing:
                        Constants.letterSpacingText,
                        height: 1.5,
                        color: Constants.primaryBlack,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
