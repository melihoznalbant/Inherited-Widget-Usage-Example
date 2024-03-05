import 'package:flutter/material.dart';
import 'package:flutter_inheritedwidget_changecolor/Widgets/button.dart';
import 'package:flutter_inheritedwidget_changecolor/Widgets/color_box.dart';
import 'package:flutter_inheritedwidget_changecolor/inherited_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color onColor = Colors.red;

  void colorChange() {
    setState((() {
      onColor = onColor == Colors.red ? Colors.green : Colors.red;
    }));
    
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      onColor: onColor,
      colorChange: colorChange,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Change Color"),
        ),
        body: const Center(
          child: Column(
            children: [
              ColorBox(),
              Button(),
            ],
          ),
        ),
      ),
    );
  }
}
