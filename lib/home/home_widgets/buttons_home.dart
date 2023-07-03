import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pokedextest/home/home_screens/home_screen.dart';

import '../../constants.dart';

class ButtonsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heightCurrent = MediaQuery.of(context).size.height;
    final widthCurrent = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: heightCurrent * 0.02,
                width: widthCurrent * 0.1,
                decoration: BoxDecoration(
                  borderRadius: Constants.borderRadiusContainer50,
                  color: Constants.primaryBlack,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: heightCurrent * 0.02,
                width: widthCurrent * 0.1,
                decoration: BoxDecoration(
                  borderRadius: Constants.borderRadiusContainer50,
                  color: Constants.primaryBlack,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: heightCurrent * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Container(
                height: heightCurrent * 0.1,
                width: widthCurrent * 0.22,
                decoration: BoxDecoration(
                  borderRadius: Constants.borderRadiusContainer50,
                  color: Constants.primaryBlack,
                ),
                child: Icon(
                  Icons.logout,
                  color: Constants.primaryWhite,
                ),
              ),
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: heightCurrent * 0.05,
                    width: widthCurrent * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: Constants.borderRadiusContainer4,
                      color: Constants.primaryBlack,
                    ),
                    child: Icon(
                      Icons.arrow_upward,
                      color: Constants.primaryWhite,
                    ),
                  ),
                ),
                Padding(
                  padding: Constants.paddingOnlyTop18,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: heightCurrent * 0.05,
                      width: widthCurrent * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: Constants.borderRadiusContainer4,
                        color: Constants.primaryBlack,
                      ),
                      child: Icon(
                        Icons.arrow_downward,
                        color: Constants.primaryWhite,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
