import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/homescreencontroller.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final Providerobj = Provider.of<Homescreencontroller>(context);
    print("hello${Providerobj.count}");
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Provider.of<Homescreencontroller>(context, listen: false).increment();
      }),
      body: Center(
        child: Text(
          Providerobj.count.toString(),
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
