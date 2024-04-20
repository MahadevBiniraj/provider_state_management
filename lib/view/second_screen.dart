import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/homescreencontroller.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    final Providerobj = Provider.of<Homescreencontroller>(context);
    // print("hello${Providerobj.count}");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Second Screen",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Provider.of<Homescreencontroller>(context, listen: false).increment();
      }),
      body: Center(
          child: Consumer<Homescreencontroller>(
        builder: (context, value, child) => Text(
          value.count.toString(),
          style: TextStyle(fontSize: 25),
        ),
      )),
    );
  }
}
