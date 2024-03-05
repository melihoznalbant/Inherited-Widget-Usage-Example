import 'package:flutter/material.dart';
import 'package:flutter_inheritedwidget_changecolor/inherited_widget.dart';

class ColorBox extends StatelessWidget {

  const ColorBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: MyInheritedWidget.of(context)!.onColor,
    );
  }
}