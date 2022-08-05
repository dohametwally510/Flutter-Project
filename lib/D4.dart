// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/About_us.dart';

import 'Disease.dart';
import 'faq.dart';
import 'image_picker_channel.dart';
import 'main.dart';
import 'registration_screen.dart';
import 'package:flutter_html/flutter_html.dart';

import 'result.dart';
import 'sevices.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class D4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors

        backgroundColor: Colors.blue,

        //leading: Icon(Icons.menu),
        // ignore: prefer_const_constructors
        title: Text('Basal cell carcinoma [bcc]:'),

        actions: [
          IconButton(
              onPressed: () {
                print('notification on click');
              },
              icon: const Icon(Icons.notification_important)),
          IconButton(
              onPressed: () {
                print('hello');
              },
              icon: const Icon(Icons.search)),
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
          padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
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
                          width: 300,
                          height: 200,
                          // ignore: unnecessary_string_escapes
                          child: Image.asset("assets/bcc.jpg"),
                        ),
                        const Text(
                          "Basal cell carcinoma [bcc]:",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Basal cell carcinoma is a common variant of epithelial skin cancer that rarely metastasizes but rows destructively if untreated. It appears in different morphologic variants (flat, nodular, pigmented, cystic, etc) [21], which are all included in this set.[",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}