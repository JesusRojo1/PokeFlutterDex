import 'package:flutter/material.dart';

import '../../constants.dart';

class LedsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heightCurrent = MediaQuery.of(context).size.height;
    final widthCurrent = MediaQuery.of(context).size.width;
    return Container(
      margin: Constants.paddingOnlyRight18Left18,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Container(
                height: heightCurrent <= 850
                    ? heightCurrent * 0.11
                    : heightCurrent * 0.1,
                width: widthCurrent <= 411
                    ? widthCurrent * 0.22
                    : widthCurrent * 0.19,
                decoration: BoxDecoration(
                  borderRadius: Constants.borderRadiusContainer50,
                  color: Constants.primaryBlue,
                  border: Border.all(color: Constants.primaryWhite, width: 5),
                ),
              ),
              Positioned(
                bottom: 50,
                left: 20,
                child: Container(
                  height: heightCurrent * 0.029,
                  width: widthCurrent * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: Constants.borderRadiusContainer50,
                    color: Constants.primaryWhite,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: heightCurrent <= 850
                ? heightCurrent * 0.030
                : heightCurrent * 0.024,
            width:
                widthCurrent <= 450 ? widthCurrent * 0.05 : widthCurrent * 0.06,
            decoration: BoxDecoration(
              borderRadius: Constants.borderRadiusContainer50,
              color: Constants.secondRed,
              border: Border.all(color: Constants.primaryBlack, width: 2),
            ),
          ),
          Container(
            height: heightCurrent <= 850
                ? heightCurrent * 0.030
                : heightCurrent * 0.024,
            width:
                widthCurrent <= 450 ? widthCurrent * 0.05 : widthCurrent * 0.06,
            decoration: BoxDecoration(
              borderRadius: Constants.borderRadiusContainer50,
              color: Constants.primaryYellow,
              border: Border.all(color: Constants.primaryBlack, width: 2),
            ),
          ),
          Container(
            height: heightCurrent <= 850
                ? heightCurrent * 0.030
                : heightCurrent * 0.024,
            width:
                widthCurrent <= 450 ? widthCurrent * 0.05 : widthCurrent * 0.06,
            decoration: BoxDecoration(
              borderRadius: Constants.borderRadiusContainer50,
              color: Constants.primaryGreen,
              border: Border.all(color: Constants.primaryBlack, width: 2),
            ),
          ),
        ],
      ),
    );
  }
}
