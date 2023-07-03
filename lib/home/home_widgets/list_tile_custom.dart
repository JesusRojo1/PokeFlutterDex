import 'package:flutter/material.dart';

import '../../constants.dart';

late String nameDocument;
late String sizeDocument;

class ListTileCustom extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? secondSubTitle;
  final Widget? secondTitle;
  final Widget? thirdTitle;
  final Widget? subtitle;
  final Widget? trailing;
  final bool? isThreeLine;
  final bool? dense;
  final VisualDensity? visualDensity;
  final ShapeBorder? shape;
  final ListTileStyle? style;
  final Color? selectedColor;
  final Color? iconColor;
  final Color? textColor;
  final EdgeInsetsGeometry? contentPadding;
  final bool? enabled;
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;
  final MouseCursor? mouseCursor;
  final bool? selected;
  final Color? focusColor;
  final Color? hoverColor;
  final FocusNode? focusNode;
  final bool? autofocus;
  final Color? tileColor;
  final Color? selectedTileColor;
  final bool? enableFeedback;
  final double? horizontalTitleGap;
  final double? minVerticalPadding;
  final double? minLeadingWidth;
  final double? radiusCircular;
  final Color? colorBorder;
  final EdgeInsetsGeometry? paddingCustomTitle;

  const ListTileCustom({
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.isThreeLine,
    this.dense,
    this.visualDensity,
    this.shape,
    this.style,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.contentPadding,
    this.enabled,
    this.onTap,
    this.onLongPress,
    this.mouseCursor,
    this.selected,
    this.focusColor,
    this.hoverColor,
    this.focusNode,
    this.autofocus,
    this.tileColor,
    this.selectedTileColor,
    this.enableFeedback,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.secondTitle,
    this.radiusCircular,
    this.colorBorder,
    this.paddingCustomTitle,
    this.thirdTitle, this.secondSubTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.04,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              title ?? Container(),
            ],
          ),
        ),
        Container(
          height: 1,
          width: 500,
          color: Constants.primaryBlack,
        ),
      ],
    );
  }
}
