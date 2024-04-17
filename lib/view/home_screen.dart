import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/homescreencontroller.dart';
import 'package:provider_state_management/view/second_screen.dart';

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
      appBar: AppBar(
        title: Text(
          "HomeScreen",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Provider.of<Homescreencontroller>(context, listen: false).increment();
      }),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Secondscreen(),
                ));
          },
          child: Text(
            Providerobj.count.toString(),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
