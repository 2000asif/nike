import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../profile_screen.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController emailORUserNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Edit Your Profile',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
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
          AppTextField(
            textStyle: const TextStyle(color: Colors.black),
            textFieldType: TextFieldType.EMAIL,
            controller: emailORUserNameController,
            cursorColor: Colors.black,
            decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: "Your Name",
                hintStyle: const TextStyle(color: Colors.black),
                filled: true,
                fillColor: Colors.white),
          ),
          const SizedBox(
            height: 10.0,
          ),
          AppTextField(
            textStyle: const TextStyle(color: Colors.black),
            textFieldType: TextFieldType.PASSWORD,
            cursorColor: Colors.black,
            controller: passwordController,
            decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: "password",
                hintStyle: const TextStyle(color: Colors.black),
                filled: true,
                fillColor: Colors.white),
          ),
          const SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: Container(
              padding: const EdgeInsets.all(20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: const Center(
                child: Text(
                  "Save",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
