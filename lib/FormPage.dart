// ignore_for_file: unnecessary_brace_in_string_interps, avoid_print, non_constant_identifier_names, prefer_final_fields, use_key_in_widget_constructors, unnecessary_string_escapes, prefer_const_constructors, unused_import, duplicate_import

import 'dart:convert';
import 'package:flutter/material.dart';
import 'About_us.dart';
import 'Disease.dart';
import 'InputDeco_design.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'image_picker_channel.dart';
import 'main.dart';
class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}
class _FormPageState extends State<FormPage> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController governate = TextEditingController();
  TextEditingController telnum = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController email = TextEditingController(); 
  TextEditingController pass = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors

        backgroundColor: Colors.blue,
        // leading: Icon(Icons.menu),
        // ignore: prefer_const_constructors
        title: Text('Registration'),

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
              accountEmail: Text("dohametwally39@gmail.com"),
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
              leading: Icon(Icons.login),
              title: Text("Login"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
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
              title: Text("Upload The Image"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraWidget()),
                );
              },
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Exit"),
              hoverColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormPage()),
                );
              },
              onLongPress: () {},
            ),
          ],
        ),
      ),
      
      
      body: Center(
        child: SingleChildScrollView(
          child: Form(
             key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: TextFormField(
                    controller: firstname,
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.person,"First Name"),
                    validator: ( value){
                      if(value!.isEmpty)
                        {
                          return "Please enter name";
                        }
                      return null;
                    },
                    onSaved: ( name){
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: TextFormField(
                    controller: lastname,
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.person,"Last Name"),
                    validator: ( value){
                      if(value!.isEmpty)
                        {
                          return "Please enter name";
                        }
                      return null;
                    },
                    onSaved: ( name){
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: TextFormField(
                    controller: governate,
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.place,"Governorate"),
                    validator: ( value){
                      if(value!.isEmpty)
                        {
                          return "Please enter The Governorate";
                        }
                      return null;
                    },
                    onSaved: ( name){
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: TextFormField(
                    controller: age,
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.person,"Age"),
                    validator: ( value){
                      if(value!.isEmpty)
                        {
                          return "Please enter The Age";
                        }
                      return null;
                    },
                    onSaved: ( name){
                    },
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: TextFormField(
                    controller: gender,
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.person,"Gender"),
                    validator: ( value){
                      if(value!.isEmpty)
                        {
                          return "Please enter The Gender";
                        }
                      return null;
                    },
                    onSaved: ( name){
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: email,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.email,"Email"),
                    validator: ( value){
                      if(value!.isEmpty)
                      {
                        return "Please enter  email";
                      }
                      if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))
                      {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                    onSaved: ( email){
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: telnum,
                    keyboardType: TextInputType.number,
                    decoration:buildInputDecoration(Icons.phone,"Phone No"),
                    validator: ( value){
                      if(value!.isEmpty)
                      {
                        return "Please enter  phone";
                      }
                      if(value.length < 9)
                      {
                        return "Please enter valid phone";
                      }
                      return null;
                    },
                    onSaved: ( phone){
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: pass,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Password"),
                    validator: ( value){
                      if(value!.isEmpty)
                      {
                        return "Please enter password";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: _confirmpassword,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Confirm Password"),
                    validator: ( value){
                      if(value!.isEmpty)
                      {
                        return "Please enter re-password";
                      }
                      if(pass.text != _confirmpassword.text)
                      {
                        return "Password Do not match";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: (){
                      if(_formkey.currentState!.validate())
                        {
                           RegistrationUser();
                          print("Successful");
                        }else
                          {
                             print("Unsuccessfull");
                          }
                      
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue,width: 2)
                    ),
                    textColor:Colors.white,child: Text("Submit"),
                    
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future RegistrationUser()  async{
    // url to registration php script
    //var APIURL = "database link";
    //json maping user entered details
   /* Map mapeddate ={
      'name':_name.text,
      'email':_email.text,
      'phone':_phone.text,
      'password':_password.text
    };*/
    //send  data using http post to our php code
   http.Response reponse = await http.post(
  Uri.parse("E:Xampphtdocs\flutter project\flutter_application_1\server.php"),
  body: {
       'First_name':firstname.text,
       'Last_namename':lastname.text, 
      'email':email.text,
      'phone':telnum.text,
      'Age':age.text,
      'Gender':gender.text,
      'Governorate':governate.text,
      'password':pass.text
  
  });
    var data = jsonDecode(reponse.body);
    print("DATA: ${data}");
  }
}
 
