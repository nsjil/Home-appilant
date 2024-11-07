import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_applains/datas/items.dart';

class Datas extends StatefulWidget {
  const Datas({super.key,required this.valuess});

  final ItemsPage valuess;

  @override
  State<Datas> createState() => _DatasState();
}

class _DatasState extends State<Datas> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter==10){
        _counter=0;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      if(_counter==0){
        _counter=9;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          widget.valuess.image),
                      fit: BoxFit.cover)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                 widget.valuess.text,
                  style: TextStyle(fontSize: 40),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 120,
                    color: Colors.grey[350],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            iconSize: 20,
                            onPressed: _decrementCounter,
                            icon: Icon(Icons.horizontal_rule_outlined)),
                        Text(
                          '$_counter',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        IconButton(
                            iconSize: 20,
                            onPressed: _incrementCounter,
                            icon: Icon(Icons.add))
                     
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.yellow),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.brown),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "drawing room woodern sofa set is solid wooden sofa set which you can contrest contrast the cushion of any color . the good sight caused ue to the furniture help us relax a longer time.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "₹ 2500",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                      height: 60,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 121, 147, 174)),
                      child: Center(
                          child: Text("Add to cart",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
