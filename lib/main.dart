import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/homescreencontroller.dart';
import 'package:provider_state_management/view/home_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Homescreencontroller(),
      child: MaterialApp(
        home: Homescreen(),
      ),
    );
  }
}
