
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_label, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/D1.dart';
import 'package:flutter_application_1/D2.dart';
import 'package:flutter_application_1/D3.dart';
import 'package:flutter_application_1/D4.dart';
import 'package:flutter_application_1/D5.dart';
import 'package:flutter_application_1/D6.dart';
import 'package:flutter_application_1/D7.dart';
import 'package:flutter_application_1/PASS.dart';
import 'package:flutter_html/flutter_html.dart';

import 'About_us.dart';


import 'faq.dart';
import 'image_picker_channel.dart';
import 'main.dart';
import 'registration_screen.dart';
import 'result.dart';
import 'sevices.dart';


class Disease extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // ignore: prefer_const_constructors

        backgroundColor: Colors.blue,
        // leading: Icon(Icons.menu),
        // ignore: prefer_const_constructors
        title: Text('Disease Information'),

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


 body: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 20,),

           Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),

  
             child: SizedBox(
            width: 2000,
            height: 50,
            child: RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => D1()),
                                );
              },
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: const Text(
                "Melanocytic nevi [nv]",
                style: const TextStyle(color: Colors.white),
              ),),

                
                  ),),
                  SizedBox(height: 13,),

                 Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),

  
             child: SizedBox(
            width: 2000,
            height: 50,
            child: RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
               onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => D2()),
                                );
              },
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: const Text(
                "Melanoma [mel]",
                style: const TextStyle(color: Colors.white),
              ),),

                
                  ),),
                  SizedBox(height: 13,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),

  
             child: SizedBox(
            width: 2000,
            height: 50,
            child: RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
               onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => D3()),
                                );
              },
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: const Text(
                "Benign keratosis-like lesions",
                style: const TextStyle(color: Colors.white),
              ),),

                
                  ),),
                  SizedBox(height: 13,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),

  
             child: SizedBox(
            width: 2000,
            height: 50,
            child: RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
               onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => D4()),
                                );
              },
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: const Text(
                "Basal cell carcinoma [bcc]",
                style: const TextStyle(color: Colors.white),
              ),),

                
                  ),),
                  SizedBox(height: 13,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),

  
             child: SizedBox(
            width: 2000,
            height: 50,
            child: RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
               onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => D5()),
                                );
              },
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: const Text(
                "Actinic keratoses [akiec]",
                style: const TextStyle(color: Colors.white),
              ),),

                
                  ),),
                  SizedBox(height: 13,),
                 Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),

  
             child: SizedBox(
            width: 2000,
            height: 50,
            child: RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
               onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => D6()),
                                );
              },
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: const Text(
                "Vascular lesions [vasc]",
                style: const TextStyle(color: Colors.white),
              ),),

                
                  ),),
                  SizedBox(height: 13,),
                 Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),

  
             child: SizedBox(
            width: 2000,
            height: 50,
            child: RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
               onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => D7()),
                                );
              },
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: const Text(
                "Dermatofibroma [df]",
                style: const TextStyle(color: Colors.white),
              ),),

                
                  ),),
                  SizedBox(height: 13,),
                 
                ],
              )
            ],
          ));
  }
} 
       