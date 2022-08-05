// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Disease.dart';
import 'package:flutter_application_1/registration_screen.dart';
import 'package:flutter_html/flutter_html.dart';


import 'About_us.dart';


import 'faq.dart';
import 'image_picker_channel.dart';
import 'main.dart';
import 'result.dart';


class service extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors

        backgroundColor: Colors.blue,
        // leading: Icon(Icons.menu),
        // ignore: prefer_const_constructors
        title: Text('Our Services'),

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
                  SizedBox(height: 160),

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
                                      builder: (context) => result ()),
                                );
              },
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const Text(
                "get the results",
                style: TextStyle(color: Colors.white ,fontSize: 20,
                            fontWeight: FontWeight.w500,),
              ),),

                
                  ),),
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
                                      builder: (context) => Disease()),
                                );
              },
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const Text(
                "DiseaseInformation",
                style: TextStyle(color: Colors.white,fontSize: 20,
                            fontWeight: FontWeight.w500, ),
              ),),

                
                  ),),
                  SizedBox(height: 13,),

                ]
              ),
],),
       );
  }
}