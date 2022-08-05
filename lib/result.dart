// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
//import 'dart:html';
import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:fluttertoast/fluttertoast.dart';

import 'About_us.dart';
import 'Disease.dart';

import 'FormPage.dart';
import 'faq.dart';
import 'image_picker_channel.dart';
import 'main.dart';
import 'sevices.dart';



class result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors

        backgroundColor: Colors.blue,
        // leading: Icon(Icons.menu),
        // ignore: prefer_const_constructors
        title: Text('Results'),

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
                  MaterialPageRoute(builder: (context) => FormPage()),
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
                  MaterialPageRoute(builder: (context) => FormPage()),
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
/*
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/mela.jpg"),
              SizedBox(height: 20),
              
                Text("     The Result Of Classification is ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 60, 168, 219)),textAlign: TextAlign.center,),
              
                        
                        
                     SizedBox(height: 15),      
                        
              Container(
        
        padding: EdgeInsets.all(20.0),
        child: Table(  
                    defaultColumnWidth: IntrinsicColumnWidth(flex: 160.0),
                    
                    
          children: [
            TableRow(children: [
              
              Text(' Most Likely Class ', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15.0)),
                      
                      
              Text(' Melanoma(Cancer)', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15.0,color: Color.fromARGB(255, 106, 177, 210),)),
              
            ]),

            TableRow(children: [
              
              Text('  ', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15.0)),
                      
                      
              Text('', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15.0,color: Color.fromARGB(255, 106, 177, 210),)),
              
              
            ]),
           

            TableRow(children: [
              Text(' probability  ', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15.0)),
              Text(' 95.89    ' ,style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15.0,color: Color.fromARGB(255, 106, 177, 210),)),
              
            ])
          ],
          
        ),
        
      )
              
              
             
            ],
          ),
        ),
      ),
      
      
      */

      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/mela.jpg"),
              SizedBox(height: 20),
              
                Text(" The Result Of Classification is ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 28, 28, 29)),textAlign: TextAlign.center,),
              
                        
                        
                     SizedBox(height: 20),      
                        
            
              RichText(
          text: TextSpan(
            text: '',
            style: TextStyle(color: Color.fromARGB(255, 60, 168, 219)), /*defining default style is optional */
            children: <TextSpan>[
              TextSpan(
                  text: ' Melanoma(Cancer)', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              TextSpan(
                  text: ' With  probability  Of',
                  style: TextStyle(color: Color.fromARGB(255, 2, 2, 2),fontSize: 15)),
              TextSpan(
                  text: ' 95.89',
                  style: TextStyle(color: Color.fromARGB(255, 60, 168, 219), fontSize: 20)),
            ],
          ),
          textAlign: TextAlign.center,),]
        ),

        


             
      
            
          )
        )
        
    

            
    );
  }
}

//Most Likely Class
//Melnoma(Cancer)

//Prediction
//95.89