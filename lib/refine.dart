import 'package:flutter/material.dart';

final item = ["kfljd,kdjfldf,klfj"];
String? valueoi;
bool cofee = true;
bool businn = true;
bool hobiee = true;
bool friend = true;
bool movie = true;
bool dinnin = true;
bool datinng = true;
bool matrimony = true;

class refine extends StatefulWidget {
  const refine({Key? key}) : super(key: key);

  @override
  State<refine> createState() => _refineState();
}

class _refineState extends State<refine> {
  double distance = 0.0; // Variable to track the selected distance

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Refine"),
          backgroundColor: Color.fromARGB(255, 16, 93, 151),
          leading: IconButton(
            icon: Icon(Icons.chevron_left_sharp),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select Your Availability",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 16, 93, 151),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                    ),
                  ),
                  hint: Text("Select Availability"),
                  items: [
                    DropdownMenuItem(
                      child: Text("Available | Hey Let Us Connect"),
                      value: "Available",
                    ),
                    DropdownMenuItem(
                      child: Text("Away | Stay Discreet And Watch"),
                      value: "Away",
                    ),
                    DropdownMenuItem(
                      child:
                          Text("Busy | Do Not Disturb | Will Catch Up Later"),
                      value: "Busy",
                    ),
                    DropdownMenuItem(
                      child: Text("SOS | Emergency! Need Assistance! HELP"),
                      value: "SOS",
                    ),
                  ],
                  value: valueoi,
                  onChanged: (value) {
                    setState(() {
                      valueoi = value as String?;
                    });
                  },
                ),
                SizedBox(height: 20),
                Text(
                  "Add Your Status",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 16, 93, 151),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  maxLength: 250,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Select Hyper local Distance",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 16, 93, 151),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("0.0 Km"),
                    Expanded(
                      child: Slider(
                        activeColor: Color.fromARGB(255, 16, 93, 151),
                        value: distance,
                        min: 0.0,
                        max: 100.0,
                        onChanged: (newValue) {
                          setState(() {
                            distance = newValue;
                          });
                        },
                      ),
                    ),
                    Text("100.0 Km"),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Text("Value: ${distance.toStringAsFixed(1)}"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Select Purpose",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 16, 93, 151),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              cofee = !cofee;
                            });
                          },
                          child: Container(
                            width: 80,
                            height: 30,
                            child: Center(
                                child: Text(
                              "Coffee",
                              style: TextStyle(
                                  color: cofee ? Colors.black : Colors.white),
                            )),
                            decoration: BoxDecoration(
                                color: cofee
                                    ? Colors.white
                                    : Color.fromARGB(255, 16, 93, 151),
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              businn = !businn;
                            });
                          },
                          child: Container(
                            width: 80,
                            height: 30,
                            child: Center(
                                child: Text("Business",
                                    style: TextStyle(
                                        color: businn
                                            ? Colors.black
                                            : Colors.white))),
                            decoration: BoxDecoration(
                                color: businn
                                    ? Colors.white
                                    : Color.fromARGB(255, 16, 93, 151),
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              hobiee = !hobiee;
                            });
                          },
                          child: Container(
                            width: 80,
                            height: 30,
                            child: Center(
                                child: Text("Hobbies",
                                    style: TextStyle(
                                        color: hobiee
                                            ? Colors.black
                                            : Colors.white))),
                            decoration: BoxDecoration(
                                color: hobiee
                                    ? Colors.white
                                    : Color.fromARGB(255, 16, 93, 151),
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              friend = !friend;
                            });
                          },
                          child: Container(
                            width: 80,
                            height: 30,
                            child: Center(
                                child: Text("Friendship",
                                    style: TextStyle(
                                        color: friend
                                            ? Colors.black
                                            : Colors.white))),
                            decoration: BoxDecoration(
                                color: friend
                                    ? Colors.white
                                    : Color.fromARGB(255, 16, 93, 151),
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                movie = !movie;
                              });
                            },
                            child: Container(
                              width: 80,
                              height: 30,
                              child: Center(
                                  child: Text("Movies",
                                      style: TextStyle(
                                          color: movie
                                              ? Colors.black
                                              : Colors.white))),
                              decoration: BoxDecoration(
                                  color: movie
                                      ? Colors.white
                                      : Color.fromARGB(255, 16, 93, 151),
                                  border: Border.all(),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                dinnin = !dinnin;
                              });
                            },
                            child: Container(
                              width: 80,
                              height: 30,
                              child: Center(
                                  child: Text("Dinning",
                                      style: TextStyle(
                                          color: dinnin
                                              ? Colors.black
                                              : Colors.white))),
                              decoration: BoxDecoration(
                                  color: dinnin
                                      ? Colors.white
                                      : Color.fromARGB(255, 16, 93, 151),
                                  border: Border.all(),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                datinng = !datinng;
                              });
                            },
                            child: Container(
                              width: 80,
                              height: 30,
                              child: Center(
                                  child: Text("Dating",
                                      style: TextStyle(
                                          color: datinng
                                              ? Colors.black
                                              : Colors.white))),
                              decoration: BoxDecoration(
                                  color: datinng
                                      ? Colors.white
                                      : Color.fromARGB(255, 16, 93, 151),
                                  border: Border.all(),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                matrimony = !matrimony;
                              });
                            },
                            child: Container(
                              width: 80,
                              height: 30,
                              child: Center(
                                  child: Text("Matrimony",
                                      style: TextStyle(
                                          color: matrimony
                                              ? Colors.black
                                              : Colors.white))),
                              decoration: BoxDecoration(
                                  color: matrimony
                                      ? Colors.white
                                      : Color.fromARGB(255, 16, 93, 151),
                                  border: Border.all(),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              minimumSize: Size(230, 50),
                              primary: const Color.fromARGB(255, 16, 93, 151)),
                          onPressed: () {},
                          child: Text("Save & Explore")),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
