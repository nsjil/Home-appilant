import 'package:flutter/material.dart';

class Favorate extends StatefulWidget {
  const Favorate({super.key});

  @override
  State<Favorate> createState() => _FavorateState();
}

class _FavorateState extends State<Favorate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "FAVORATE ",
          style: TextStyle(decorationThickness: 50),
        )),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("nothig you have favorte"),
        ],
      ),
    );
  }
}
