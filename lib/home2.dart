// ignore_for_file: avoid_web_libraries_in_flutter, unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/main.dart';




class home2 extends StatelessWidget {
  const home2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors

        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu),
        // ignore: prefer_const_constructors
        title: Text(
          '',
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
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
                          width: 500,
                          height: 450,
                          // ignore: unnecessary_string_escapes
                          child: Image.asset("assets/homepage2.jpg"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Automatic Diagnosis of Skin Cancer Lesions",
                          style:  TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "",
                          style: TextStyle(
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
                  Container(
                    height: 60,
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      gradient:  LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1],
                        colors: [
                          Color(0xFF2493F5),
                          Color(0xFF0B87F4),
                        ],
                      ),
                      borderRadius:  BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: const Text(
                          "Continous",
                          style:  TextStyle(
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
                                builder: (context) =>const LoginScreen()),
                          );
                        },
                      ),
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
