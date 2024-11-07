import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class Person_Page {
  final Icon Person_Icon;
  final String Person_Title;
  final Icon Person_Trailing;
  Person_Page(
      {required this.Person_Icon,
      required this.Person_Title,
      required this.Person_Trailing});
}

List<Person_Page> Person_data = [
  Person_Page(
    Person_Icon: Icon(Icons.person_2_outlined),
    Person_Title: "Profile",
    Person_Trailing: Icon(Icons.arrow_forward_ios),
  ),
  Person_Page(
    Person_Icon: Icon(Icons.location_on_outlined),
    Person_Title: "Save Address",
    Person_Trailing: Icon(Icons.arrow_forward_ios),
  ),
  Person_Page(
    Person_Icon: Icon(Icons.help_outline),
    Person_Title: "Help Center",
    Person_Trailing: Icon(Icons.arrow_forward_ios),
  ),
  Person_Page(
    Person_Icon: Icon(Icons.call),
    Person_Title: "Emargency Contact",
    Person_Trailing: Icon(Icons.arrow_forward_ios),
  ),
  Person_Page(
    Person_Icon: Icon(Icons.settings),
    Person_Title: "Settings",
    Person_Trailing: Icon(Icons.arrow_forward_ios),
  ),
  Person_Page(
    Person_Icon: Icon(Icons.send),
    Person_Title: "Send Feedback",
    Person_Trailing: Icon(Icons.arrow_forward_ios),
  ),
  Person_Page(
    Person_Icon: Icon(Icons.share),
    Person_Title: "Share This App",
    Person_Trailing: Icon(Icons.arrow_forward_ios),
  ),
];

class _PersonState extends State<Person> {
  void alertBox(context) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            content: Row(
              children: [
                IconButton(
                    onPressed: () {
                      _gallery_();
                    },
                    icon: Icon(Icons.open_in_browser_rounded)),
                IconButton(
                    onPressed: () {
                      _Camera_();
                    },
                    icon: Icon(Icons.camera))
              ],
            ),
          );
        });
  }

  Future _gallery_() async {
    await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {});
  }

  Future _Camera_() async {
    await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            color: Colors.transparent,
            child: Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Image.network(
                    "https://png.pngtree.com/thumb_back/fh260/background/20210828/pngtree-rectangle-diagonal-cut-white-lines-yellow-background-image_765017.jpg"),
              ),
              Positioned(
                  bottom: 75,
                  right: 200,
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromARGB(255, 255, 253, 253)),
                      child: Flexible(
                        fit: FlexFit.loose,
                        child: IconButton(
                          onPressed: () {
                            alertBox(context);
                          },
                          icon: Center(
                              child: Icon(
                            Icons.person,
                            size: 80,
                          )),
                          color: Colors.grey,
                        ),
                      ))),
              Positioned(bottom: 80,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.support_agent_outlined,
                        
                      )))
            ]),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Set Your Name",
                style: TextStyle(
                    fontSize: 20,
                    decorationThickness: 100,
                    color: Colors.black),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                "Enter city,County",
                style: TextStyle(fontSize: 10),
              )),
          Flexible(
              child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Person_data[index].Person_Icon.icon),
                  title: Text(Person_data[index].Person_Title),
                  trailing: Icon(Person_data[index].Person_Trailing.icon),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
