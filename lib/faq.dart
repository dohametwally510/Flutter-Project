// ignore_for_file: unused_import, avoid_web_libraries_in_flutter, prefer_const_constructors, prefer_typing_uninitialized_variables, avoid_print, duplicate_ignore, import_of_legacy_library_into_null_safe, empty_statements
import 'dart:convert';
//import 'dart:html';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:flutter_html/flutter_html.dart';

import 'About_us.dart';
import 'Disease.dart';


import 'FormPage.dart';
import 'image_picker_channel.dart';
import 'main.dart';
import 'registration_screen.dart';
import 'result.dart';
import 'sevices.dart';


class faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors

        backgroundColor: Colors.blue,

        //leading: Icon(Icons.menu),
        // ignore: prefer_const_constructors
        title: Text('FAQ'),

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/FAQ.jpg'),
              SizedBox(height: 20),
              Text(
                'What is the purpose of this program ?',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "our application in the medical field is Automatic Lesion Detection System for skin cancer classification. Computer aided diagnosis helps physicians and dermatologists to obtain a second opinion for proper analysis and treatment of skin cancer. Precise segmentation of the cancerous mole along with surrounding area is essential for proper analysis and diagnosis...To use the application, log in, then upload thephoto of the area to be detected in the skin, and then get the result of the examination.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'What Is Skin Cancer?',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Skin cancer is a tumour or growth of abnormal cells in our skin. This occurs when our skin cells are damaged by overexposure to ultraviolet (UV) radiation from the sun. ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),textAlign: TextAlign.center,
              ),

              Text(
                'What Are The Early Signs Of Skin Cancer?',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Skin cancer symptoms can vary, depending on the type of skin cancer. Common signs of skin cancer include moles, patches of scaly skin, open sores or raised bumps. In order to identify whether skin cancer is present, it’s important to consult with your GP or doctor, who can perform a skin cancer check.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),textAlign: TextAlign.center,
              ),

               Text(
                'What Are The Advantages Of A Skin Cancer Check?',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'A regular skin cancer check-up by a doctor is the most effective way to discover skin cancers before they can develop or create complications. A skin cancer check-up will help you detect and treat pre-cancerous issues as early as possible in order to improve the chances of full recovery.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),textAlign: TextAlign.center,
              ),

              Text(
                'What Should You Do If You Find A Suspicious Spot?',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'First of all, don’t panic. A doctor can provide three possible diagnoses: clearly malignant, clearly benign and too difficult to know without further testing.If your doctor is 100% certain the skin condition is skin cancer, they will arrange to remove it. You may be referred to a dermatologist or surgeon.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),textAlign: TextAlign.center,
              ),



            ],
          ),
        ),
      ),
    );
  }
}
