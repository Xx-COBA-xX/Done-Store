// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, unused_import

import 'package:drone_app/weight/drone1.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import '../../components/components.dart';
import '../../constanst/constanst.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int active = 0;
  var _currentIndex = 0;
  var Con1 = true;
  var Con2 = true;
  final List<Map<String, dynamic>> gridMap = [
    {
      'image': 'images/d1.png',
      'name': 'DJI 33',
      'price': "\$850.0",
      'title': 'This Drone is very profitional'
    },
    {
      'image': 'images/d2.png',
      'name': 'DJI 35',
      'price': "\$890.0",
      'title': 'This Drone is very profitional'
    },
    {
      'image': 'images/d3.png',
      'name': 'DJI 64',
      'price': "\$800.0",
      'title': 'This Drone is very profitional'
    },
    {
      'image': 'images/d4.png',
      'name': 'DJI 56',
      'price': "\$950.0",
      'title': 'This Drone is very profitional'
    },
    {
      'image': 'images/d5.png',
      'name': 'DJI 73',
      'price': "\$990.0",
      'title': 'This Drone is very profitional'
    },
    {
      'image': 'images/d6.png',
      'name': 'DJI 12',
      'price': "\$999.9",
      'title': 'This Drone is very profitional'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0,
        title: Row(
          children: const [
            Text(
              "Our",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 1,
            ),
            Text(
              "Products",
              style: TextStyle(color: Colors.grey, fontSize: 30),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.search_rounded,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            width: size.width * 0.90,
            height: 50,
            decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(29),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 0),
                    blurRadius: 20,
                    spreadRadius: 0,
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  DefaultButton(
                    color: active == 1
                        ? Colors.deepOrange.withOpacity(0.4)
                        : kWhiteColor,
                    text: "ALL",
                    deflutPadding: 30,
                    hieght: 16,
                    press: () {
                      setState(() {
                        active = 1;
                      });
                    },
                    radeus: 29,
                    textColor: active == 1 ? Colors.black54 : Colors.black38,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  DefaultButton(
                    color: active == 2
                        ? Colors.deepOrange.withOpacity(0.4)
                        : kWhiteColor,
                    text: "New",
                    deflutPadding: 35,
                    hieght: 16,
                    press: () {
                      setState(() {
                        active = 2;
                      });
                    },
                    radeus: 29,
                    textColor: active == 2 ? Colors.black54 : Colors.black38,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  DefaultButton(
                    color: active == 3
                        ? Colors.deepOrange.withOpacity(0.3)
                        : kWhiteColor,
                    text: "Populor",
                    deflutPadding: 31,
                    hieght: 16,
                    press: () {
                      setState(() {
                        active = 3;
                      });
                    },
                    radeus: 29,
                    textColor: active == 3 ? Colors.black54 : Colors.black38,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onDoubleTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Drone1(),
                  ));
                },
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 260,
                  ),
                  itemCount: gridMap.length,
                  itemBuilder: ((_, index) => Card(
                        color: kWhiteColor,
                        elevation: 7,
                        shadowColor: Colors.grey[400],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19)),
                        child: Container(
                          height: size.height,
                          width: size.width,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 1),
                                  child: Image.asset(
                                    gridMap.elementAt(index)['image'],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      gridMap.elementAt(index)['name'],
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.6),
                                      ),
                                    ),
                                    Text(
                                      gridMap.elementAt(index)['price'],
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: kPrimryColor.withOpacity(0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      icon: Con1
                                          ? Icon(Icons.favorite_border)
                                          : Icon(Icons.favorite),
                                      onPressed: () {
                                        setState(() {
                                          Con1 = !Con1;
                                        });
                                      },
                                      iconSize: 30,
                                      color: kPrimryColor,
                                    ),
                                    IconButton(
                                      icon: Con2
                                          ? Icon(Icons.shopping_bag_outlined)
                                          : Icon(Icons.shopping_bag),
                                      onPressed: () {
                                        setState(() {
                                          Con2 = !Con2;
                                        });
                                      },
                                      iconSize: 30,
                                      color: kPrimryColor,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        containerHeight: 65,
        iconSize: 34,
        selectedIndex: _currentIndex,
        onItemSelected: (value) => setState(() {
          _currentIndex = value;
        }),
        showElevation: true,
        items: [
          BottomNavyBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: kPrimryColor),
            ),
            activeColor: kPrimryColor.withOpacity(.3),
            inactiveColor: Colors.grey.withOpacity(.8),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_bag_sharp),
            title: Text(
              "Product",
              style: TextStyle(color: kPrimryColor),
            ),
            activeColor: kPrimryColor.withOpacity(.3),
            inactiveColor: Colors.grey[500],
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text("Setting"),
            activeColor: kPrimryColor.withOpacity(.8),
            inactiveColor: Colors.grey.withOpacity(.8),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text("Account"),
            activeColor: kPrimryColor.withOpacity(.8),
            inactiveColor: Colors.grey.withOpacity(.8),
          ),
        ],
      ),
    );
  }
}
