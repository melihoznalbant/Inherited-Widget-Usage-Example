import 'package:flutter/material.dart';

/* class MyInheritedWidget extends StatefulWidget {
  const MyInheritedWidget({super.key});

  @override
  State<MyInheritedWidget> createState() => MyInheritedWidgetState();
}
Color onColor = Colors.red;

class MyInheritedWidgetState extends State<MyInheritedWidget> {

   void changeColor(color){
    
   }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

 */

// ignore: must_be_immutable
class MyInheritedWidget extends InheritedWidget {

  @override
  final Widget child;
  Color onColor;
  void Function()? colorChange;

  MyInheritedWidget({super.key, required this.child, required this.onColor, required this.colorChange}) : super(child: child);

  static MyInheritedWidget? of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
    //assert (result != null, "No InheritedWidget found in context");
    return result;
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return true;
  }
}
