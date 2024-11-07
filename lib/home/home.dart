import 'package:flutter/material.dart';
import 'package:home_applains/datas/datas.dart';
import 'package:home_applains/datas/items.dart';
import 'package:home_applains/home/home_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded))],
      ),
      body: Flexible(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Find the home\napplains",
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Home_data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Container(
                            width: 100,
                            child: Center(
                                child: Text(Home_data[index].name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)))),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 227, 224, 224)),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[400],
                                image: DecorationImage(
                                    image: AssetImage(Home_data[index].image))),
                            //
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 3),
                itemCount: itemdatas.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Datas(valuess:itemdatas[index] ,)));
                        setState(() {});
                      },
                      child: Container(
                        height: 250,
                        width: 150,
                        color: Colors.transparent,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 30,
                              child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                                top: -5,
                                left: 15,
                                child: Image(
                                  image: AssetImage(itemdatas[index].image),
                                )),
                            Positioned(
                                top: 110,
                                left: 5,
                                child: Text(
                                  itemdatas[index].text,
                                  style: TextStyle(fontSize: 16),
                                )),
                            Positioned(
                                top: 125,
                                left: 5,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.amber),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.black)),
                                    ),
                                    Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.brown)),
                                  ],
                                )),
                            Positioned(bottom: 5, left: 5, child: Text("₹ 2500")),
                            Positioned(
                                bottom: 0,
                                right: 10,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color.fromARGB(255, 121, 147, 174)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                )),
                            Positioned(
                                right: 1,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_border_outlined)))
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
