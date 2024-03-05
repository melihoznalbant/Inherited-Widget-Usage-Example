import 'package:flutter/material.dart';
import 'package:flutter_inheritedwidget_changecolor/inherited_widget.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                  onPressed: MyInheritedWidget.of(context)!.colorChange, child: const Text("Click"));
  }
}