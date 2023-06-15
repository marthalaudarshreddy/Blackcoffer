import 'package:blackoffer/personel.dart';
import 'package:blackoffer/refine.dart';
import 'package:flutter/material.dart';

class Explorre extends StatefulWidget {
  const Explorre({Key? key}) : super(key: key);

  @override
  State<Explorre> createState() => _ExplorreState();
}

class _ExplorreState extends State<Explorre>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Color> screenColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
  ];

  final List<String> tabTitles = [
    'Personal',
    'Business',
    'Merchant',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 66, 109),
        title: Text('App Title'),
        leading: IconButton(
          icon: Icon(Icons.format_align_left_outlined),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: () {},
              child: Stack(
                children: [
                  Center(
                    child: IconButton(
                      icon: Icon(Icons.checklist_rounded),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => refine(),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    right: 7,
                    child: Text(
                      'Refine',
                      style: TextStyle(fontSize: 10.0),
                    ),
                    bottom: 5,
                  ),
                ],
              ),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Container(
            color: Color.fromARGB(
                255, 14, 82, 134), // Set the tab bar color to orange
            child: TabBar(
              controller: _tabController, // Assign the TabController
              tabs: [
                for (String title in tabTitles) Tab(text: title),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffE6E6E6),
                    radius: 30,
                    child: Icon(
                      Icons.person,
                      color: Color(0xffCCCCCC),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Drawer Header',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Edit Profile'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.groups_2_rounded),
              title: Text('My Network'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.badge),
              title: Text('Switch to Business'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.shopify_sharp),
              title: Text('Switch to Merchant'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.heart_broken_rounded),
              title: Text('Dating'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.cloud_circle),
              title: Text('Matrimony'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.badge),
              title: Text('Jobs'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: Icon(Icons.event_note_sharp),
              title: Text('Notes'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController, // Assign the TabController
        children: [
          Container(child: personel()), // Personal screen
          Container(child: personel()), // Business screen
          Container(child: personel()), // Merchant screen
        ],
      ),
      bottomNavigationBar: Material(
        elevation: 8.0, // Set the elevation value
        child: BottomNavigationBar(
          fixedColor: Colors.black,
          showUnselectedLabels: true, // Show labels for unselected items
          showSelectedLabels: true, // Show labels for selected items
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.remove_red_eye,
                size: 30.0, // Set the desired icon size
                color:
                    _tabController.index == 0 ? Colors.black : Colors.black26,
              ),
              label: "eye",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.network_wifi_sharp,
                size: 30.0, // Set the desired icon size
                color:
                    _tabController.index == 1 ? Colors.black : Colors.black26,
              ),
              label: "network",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                size: 30.0, // Set the desired icon size
                color:
                    _tabController.index == 2 ? Colors.black : Colors.black26,
              ),
              label: "message",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_contact_calendar_sharp,
                size: 30.0, // Set the desired icon size
                color:
                    _tabController.index == 3 ? Colors.black : Colors.black26,
              ),
              label: "contacts",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.tag,
                size: 30.0, // Set the desired icon size
                color:
                    _tabController.index == 4 ? Colors.black : Colors.black26,
              ),
              label: "hashtag",
            ),
          ],
          currentIndex: _tabController.index, // Set the current index
          onTap: (int index) {
            setState(() {
              _tabController.index =
                  index; // Update the selected index using TabController
            });
            if (index == 3) {
              // Show green screen for "Contacts" tab
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Contacts'),
                    content: Container(
                      color: Colors.green,
                      width: 200,
                      height: 200,
                    ),
                    actions: [
                      TextButton(
                        child: Text('Close'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            } else if (index == 4) {
              // Show red screen for "Hashtag" tab
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Hashtag'),
                    content: Container(
                      color: Colors.red,
                      width: 200,
                      height: 200,
                    ),
                    actions: [
                      TextButton(
                        child: Text('Close'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
