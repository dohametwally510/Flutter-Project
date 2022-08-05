// ignore_for_file: deprecated_member_use

import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_html/flutter_html.dart';

import 'Disease.dart';

class CameraWidget extends StatefulWidget{
  @override
  State createState() {
    // TODO: implement createState
   return CameraWidgetState();
  }

}

class CameraWidgetState extends State{
   PickedFile? imageFile=null;
   Future<void>_showChoiceDialog(BuildContext context)
  {
    return showDialog(context: context,builder: (BuildContext context){

      return AlertDialog(
        title: const Text("Choose option",style: TextStyle(color: Colors.blue),),
        content: SingleChildScrollView(
        child: ListBody(
          children: [
            const Divider(height: 1,color: Colors.blue,),
            ListTile(
              onTap: (){
                _openGallery(context);
              },
            title: const Text("Gallery"),
              leading: const Icon(Icons.account_box,color: Colors.blue,),
        ),

            const Divider(height: 1,color: Colors.blue,),
            ListTile(
              onTap: (){
                _openCamera(context);
              },
              title: const Text("Camera"),
              leading: const Icon(Icons.camera,color: Colors.blue,),
            ),
          ],
        ),
      ),);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        appBar: AppBar(
          title: const Text("Sevices "),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  child:( imageFile==null)?const Text(""): Image.file( File(  imageFile!.path)),
                ),
                MaterialButton(
                  textColor: Colors.white,
                   height: 50,
                   minWidth: 230,
                        
                  color: Colors.blue,
                  onPressed: (){
                    _showChoiceDialog(context);
                    
                  },
                  child: const Text("Select Image",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              
                  
                

                ),
                Container(
                        height: 50,
                        width: 230,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
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
                              child: const Text(
                                " Skin Lesion Disease Information",
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
                                      builder: (context) => Disease()),
                                );
                              }),
                        ),

                        
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                 
              ],
            ),
          ),

          
        ),
      );
  }

  void _openGallery(BuildContext context) async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery ,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context)  async{
      final pickedFile = await ImagePicker().getImage(
            source: ImageSource.camera ,
            );
            setState(() {
            imageFile = pickedFile!;
      });
      Navigator.pop(context);
  }
}