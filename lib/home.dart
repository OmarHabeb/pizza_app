
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizza_app/data.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          body: Container(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.all(10),
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.menu_open),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "SELECT LOCATION",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Al Mashtal",
                                        style: TextStyle(fontSize: 11)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_circle_down_rounded,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(Icons.notifications),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 110,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tab_icon.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              i = index;
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: i == index
                                                ? Colors.red
                                                : Colors.transparent))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 80,
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: i == index
                                                ? Colors.red
                                                : Colors.transparent),
                                        borderRadius: BorderRadius.circular(80),
                                        color: Colors.grey[300],
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 5,
                                            offset: Offset(3, 3),
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        tab_icon[index],
                                        size: 40,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      tab_text[index],
                                      style: TextStyle(
                                          color: i == index
                                              ? Colors.red
                                              : Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return Container(
                        width: 300,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("${img[i]}"),
                                fit: BoxFit.cover)),
                      );
                    },
                    itemCount: img.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Explore Menu ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            child: Image.asset(
                                "img/cartoon-small-pizza-file-free.png"),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'explore');
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              "View All",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: Icon(
                                  Icons.arrow_forward_outlined,
                                  size: 15,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  child: GridView.builder(
                      itemCount: menu.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 150 / 170,
                          crossAxisCount: 3,
                          crossAxisSpacing: 6,
                          mainAxisSpacing: 6),
                      itemBuilder: (context, i) {
                        return Container(
                          padding: EdgeInsets.only(top: 10),
                          color: Colors.grey[200],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 85,
                                height: 85,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(3, 3))
                                    ],
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(
                                        color: Colors.white, width: 4),
                                    image: DecorationImage(
                                        image: AssetImage("${menu_images[i]}"),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                  width: double.infinity,
                                  color: i == 0 ? Colors.red : Colors.grey[200],
                                  child: i == 0
                                      ? Text(
                                          "${menu[i]}",
                                          style: TextStyle(
                                              fontWeight: i == 0
                                                  ? FontWeight.normal
                                                  : FontWeight.bold,
                                              color: i == 0
                                                  ? Colors.white
                                                  : Colors.black),
                                        )
                                      : Center(
                                          child: Text(
                                          "${menu[i]}",
                                          style: TextStyle(
                                              fontWeight: i == 0
                                                  ? FontWeight.normal
                                                  : FontWeight.bold,
                                              color: i == 0
                                                  ? Colors.white
                                                  : Colors.black),
                                        ))),
                              Container(
                                width: double.infinity,
                                height: 5,
                                decoration: BoxDecoration(color: colors[i]),
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}