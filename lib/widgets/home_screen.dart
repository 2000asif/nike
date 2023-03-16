import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'MenShoesDatials.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FA),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.dashboard_outlined,
                color: Colors.black,
              )),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Store location',
                style: TextStyle(color: Color(0xff707B81)),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: Color(0xffF87265),
                  ),
                  Text(
                    'Mondolibug, Sylhet',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: Stack(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                    )),
                Positioned(
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF87265),
                        shape: BoxShape.circle,
                      ),
                      height: 8,
                      width: 8,
                    ))
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
            children: [
              AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                        borderSide: BorderSide.none),
                    hintText: 'Looking for shoes',
                    helperStyle: TextStyle(
                        color: Color(
                          0xff707B81,
                        ),
                        fontSize: 14),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.search)),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenShoesDatials));
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  child: DefaultTabController(
                    length: 5,
                    child: Column(
                      children: <Widget>[
                        ButtonsTabBar(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue),
                          unselectedBackgroundColor: Colors.grey[50],
                          unselectedLabelStyle: TextStyle(color: Colors.black),
                          labelStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          tabs: [
                            Tab(
                              icon: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Image.asset('images/Vector.png')),
                              text: "Nike",
                            ),
                            Tab(
                              icon: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Image.asset('images/Group 7.png')),
                              text: "Puma",
                            ),
                            Tab(
                              icon: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Image.asset('images/Group 14.png')),
                              text: "Beta",
                            ),
                            Tab(
                              icon: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Image.asset('images/Group 18.png')),
                              text: "Adidas",
                            ),
                            Tab(
                              icon: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Image.asset(
                                    'images/Group 23.png',
                                  )),
                              text: "Converse",
                            ),
                          ],
                        ),
                        Expanded(
                          flex: 2,
                          child: TabBarView(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Popular Shoes',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff1A2530)),
                                        ),
                                        Divider(),
                                        Text(
                                          'See all',
                                          style: TextStyle(
                                              color: Color(
                                                0xff5B9EE1,
                                              ),
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(blurRadius: 1)
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          height: 201,
                                          width: 158,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 12,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8,
                                                                  right: 12,
                                                                  top: 8,
                                                                  bottom: 0),
                                                          child: Image(
                                                            image: AssetImage(
                                                              'images/PngItem.png',
                                                            ),
                                                            height: 100,
                                                            width: 116,
                                                          ),
                                                        ),
                                                        Text(
                                                          'BEST SELLER',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Color(
                                                                  0xff5B9EE1)),
                                                        ),
                                                        SizedBox(
                                                          height: 16,
                                                        ),
                                                        Text(
                                                          'Nike Jordan',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 16,
                                                              color: Color(
                                                                  0xff1A2530)),
                                                        ),
                                                        SizedBox(
                                                          height: 16,
                                                        ),
                                                        Text(
                                                          '\$450.24',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff1A2530),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                        Positioned(
                                                            child: Container(
                                                          width: 34,
                                                          height: 35.5,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.blue,
                                                            borderRadius: BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        10)),
                                                          ),
                                                          child: Center(
                                                              child: Icon(
                                                            Icons.add,
                                                            color: Colors.white,
                                                          )),
                                                        ))
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 21,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(blurRadius: 1)
                                            ],
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: 201,
                                        width: 158,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Stack(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 12,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8,
                                                                right: 12,
                                                                top: 8,
                                                                bottom: 0),
                                                        child: Image(
                                                          image: AssetImage(
                                                            'images/nike.png',
                                                          ),
                                                          height: 100,
                                                          width: 116,
                                                        ),
                                                      ),
                                                      Text(
                                                        'BEST SELLER',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color(
                                                                0xff5B9EE1)),
                                                      ),
                                                      SizedBox(
                                                        height: 16,
                                                      ),
                                                      Text(
                                                        'Nike Air Mix',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xff1A2530)),
                                                      ),
                                                      SizedBox(
                                                        height: 16,
                                                      ),
                                                      Text(
                                                        '\$450.24',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff1A2530),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Center(
                                child: Icon(Icons.directions_transit),
                              ),
                              Center(
                                child: Icon(Icons.directions_bike),
                              ),
                              Center(
                                child: Icon(Icons.directions_car),
                              ),
                              Center(
                                child: Icon(Icons.directions_transit),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrivals',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1A2530)),
                  ),
                  Divider(),
                  Text(
                    'See all',
                    style: TextStyle(
                        color: Color(
                          0xff5B9EE1,
                        ),
                        fontSize: 13),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BEST SELLER',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff5B9EE1)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Nike Jordan',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff1A2530)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        '\$450.24',
                        style: TextStyle(
                            color: Color(0xff1A2530),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Positioned(
                          left: 10,
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Image(
                                image: AssetImage(
                                  'images/nike_2.png',
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
