import 'package:flutter/material.dart';
import 'package:home_applains/bottom_navigation.dart';


class Mainhome extends StatefulWidget {
  const Mainhome({super.key});

  @override
  State<Mainhome> createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Bottoms()));
          },
          backgroundColor: Color.fromARGB(255, 4, 80, 142),
          child: Icon(
            Icons.arrow_forward_ios,
            size: 30,
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "asset/virender-singh-hE0nmTffKtM-unsplash 1.png"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "find the best \n home applains for \n your home\n",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ],
              ),

              // child: Image.asset(
              //     "asset/virender-singh-hE0nmTffKtM-unsplash 1.png"),
            ),
          ],
        ));
  }
}
