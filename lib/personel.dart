import 'package:flutter/material.dart';

TextEditingController contoi = TextEditingController();

class personel extends StatefulWidget {
  const personel({super.key});

  @override
  State<personel> createState() => _personelState();
}

class _personelState extends State<personel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 40,
          left: 50,
          child: Row(
            children: [
              Container(
                  width: 300,
                  child: TextField(
                    controller: contoi,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black38,
                        ),
                        hintText: "Search",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black45),
                            borderRadius: BorderRadius.circular(50))),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.format_list_bulleted_sharp,
                      size: 35,
                    )),
              )
            ],
          ),
        ),
        Positioned(
            top: 200,
            left: 120,
            child: Image.asset(
              "images/toi.png",
              width: 200,
              height: 200,
            )),
        Positioned(
            top: 390,
            left: 70,
            child: Text(
              "Sorry!! location permission is mandatory,",
              style: TextStyle(fontSize: 15),
            )),
        Positioned(
            top: 410,
            left: 100,
            child: Text(
              "Please allow location permission",
              style: TextStyle(fontSize: 15),
            )),
        Positioned(
            top: 450,
            left: 100,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    minimumSize: Size(230, 50),
                    primary: const Color.fromARGB(255, 5, 61, 107)),
                onPressed: () {},
                child: Text("Allow")))
      ],
    ));
  }
}
