
// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Disease.dart';
import 'package:flutter_application_1/registration_screen.dart';
import 'package:flutter_html/flutter_html.dart';


import 'About_us.dart';


import 'faq.dart';
import 'image_picker_channel.dart';
import 'main.dart';
import 'result.dart';
import 'sevices.dart';


class PASS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors

        backgroundColor: Colors.blue,
        // leading: Icon(Icons.menu),
        // ignore: prefer_const_constructors
        title: Text('Reset The Password'),

        actions: [
          IconButton(
              onPressed: () {
                print('notification on click');
              },
              icon: Icon(Icons.notification_important)),
          IconButton(
              onPressed: () {
                print('hello');
              },
              icon: Icon(Icons.search)),
        ],
        elevation: 20.0,
      ),
       drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Doha Metwally",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17.0)),
              accountEmail: Text("Welcom at Automatic Diagnosis of Skin Cancer Lesions"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("profile"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationScreen()),
                );
              },
              onLongPress: () {},
            ),
            
            ListTile(
              leading: Icon(Icons.app_registration),
              title: Text("Registration"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationScreen()),
                );
              },
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About Us"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About_us()),
                );
              },
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Diseases Information"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Disease()),
                );
              },
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.upload_file),
              title: Text("Services"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => service()),
                );
              },
              onLongPress: () {},
            ),
           ListTile(
              leading: Icon(Icons.info),
              title: Text("faq"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => faq()),
                );
              },
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("results"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => result()),
                );
              },
              onLongPress: () {},
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 200,
                        height: 200,
                        // ignore: unnecessary_string_escapes
                        child: Image.asset("assets/reset_pass.jpg"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Forgot your password?",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Please enter the E-mail address associated with your account and we will send you a link to it with instructions for resetting your password.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 60,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.3, 1],
                            colors: [
                              Color(0xFF2493F5),
                              Color(0xFF0B87F4),
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: SizedBox.expand(
                          child: FlatButton(
                              child: Text(
                                "To send",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                );
                              }),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
