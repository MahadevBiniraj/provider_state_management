import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        a++;
        setState(() {});
      }),
      body: Center(
        child: Text(
          a.toString(),
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
