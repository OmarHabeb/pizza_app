
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizza_app/data.dart';
import 'package:pizza_app/details.dart';

class explore extends StatefulWidget {
  const explore({super.key});

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(color: Colors.grey[300], boxShadow: [
                  BoxShadow(
                      blurStyle: BlurStyle.outer,
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 10)
                ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.6),
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Explore Menu",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.search,
                          size: 40,
                        ),
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
                          itemCount: menu_images.length,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 70,
                                          height: 65,
                                          padding: EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: i == index
                                                    ? Colors.red
                                                    : Colors.transparent,
                                                width: 3),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  menu_images[index],
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(80),
                                            color: Colors.grey[300],
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.red,
                                                blurRadius: 10,
                                                offset: Offset(2, 2),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          menu[index],
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
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 30,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: type.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 90,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)),
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(type_img[index]),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(type[index])
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                  food_images.length,
                  (index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => details(index: index),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.all(5),
                      width: double.infinity,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 6,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            food_title[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            food_d[index],
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 150,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    image: DecorationImage(
                                        image:
                                            AssetImage("${food_images[index]}"),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                child: Icon(Icons.favorite),
                                right: 10,
                              ),
                              Positioned(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.6),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    food_p[index],
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ),
                                right: 10,
                                bottom: 5,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Text(
                                  " +  Add",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
