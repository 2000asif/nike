import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_project/widgets/profile_Screen/edit_profile.dart';
import '../models/model_controller.dart';
import 'home_screen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(profilebgColor),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Image(
                          image: AssetImage('images/profile_image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Hey,',
                        style:
                            TextStyle(color: Color(heyTextColor), fontSize: 20),
                      ),
                      FlutterLogo(),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Alisson Becker',
                    style:
                        TextStyle(color: Color(profileTextColor), fontSize: 24),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color: Color(heyTextColor),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfile()));
                          },
                          child: Text(
                            "Profile",
                            style: TextStyle(
                                color: Color(profileTextColor), fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Color(heyTextColor),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text(
                            "Home Page",
                            style: TextStyle(
                                color: Color(profileTextColor), fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.card_giftcard,
                          color: Color(heyTextColor),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "My Cart",
                          style: TextStyle(
                              color: Color(profileTextColor), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite_border_rounded,
                          color: Color(heyTextColor),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Favourite",
                          style: TextStyle(
                              color: Color(profileTextColor), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.price_change_outlined,
                          color: Color(heyTextColor),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Orders",
                          style: TextStyle(
                              color: Color(profileTextColor), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications_active,
                          color: Color(heyTextColor),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Notifications",
                          style: TextStyle(
                              color: Color(profileTextColor), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.signal_cellular_no_sim,
                          color: Color(heyTextColor),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Sign Out',
                          style: TextStyle(
                              color: Color(profileTextColor), fontSize: 16),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
