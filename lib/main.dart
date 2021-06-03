import 'dart:ui';

import 'package:android_login_ui/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.amber, // navigation bar color
    statusBarColor: Colors.white, // status bar color
    statusBarIconBrightness: Brightness.dark, // status bar icon color
    systemNavigationBarIconBrightness: Brightness.dark, // color of navigation controls
  ));
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEKSNA',
      debugShowCheckedModeBanner: false,

      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/logo.png",
          height: 100.0,
          width: 100.0,
        ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.folder_outlined, color: Colors.grey,),
              onPressed: () => {
                //TODO
              },
            ),
            IconButton(
                icon: Icon(Icons.line_weight_sharp , color: Colors.grey,),
                onPressed: () => {
                  //TODO
              },

            ),


        ]

    ),

      backgroundColor: Colors.white,
      //backgroundColor: Colors.white,

      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon.jpeg"),
                  fit: BoxFit.fill
                )
              ),
          ),),

          Positioned(
            top: 80,
              child: Container(
                height: 360,
                width: MediaQuery.of(context).size.width-40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ]
                  ),

                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 10),

                      Align(
                        alignment: Alignment(-0.93,0),
                        child: InkWell(
                          onTap: () {
                            //TODO
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Serif",
                              fontSize: 25,
                              // fontStyle: ,

                            ),
                          ),
                        ),
                      ),


                      SizedBox(height: 25),
                      _labelText('Email Address / Phone Number '),
                      _inputTextField('example@example.com', false),
                      SizedBox(height: 15),
                      _labelText('Enter Password'),
                      _inputTextField('********', true),

                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 55,
                          width: 325,
                          child: new RaisedButton(
                            onPressed: () => {
                              //TODO
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              )),


          Positioned(
            top: MediaQuery.of(context).size.height-250,
            right: 0,
            left: 0,
            child: Column(children: [
              Divider(
                color: Colors.blue,
                height: 5,
                endIndent: 30,
                indent: 30,

              ),

              SizedBox(height: 10),

              Text(
                  "Or sign-in with",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black54,

              ),),

              SizedBox(height: 15),



            ],),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height-140,
            right: 0,
            left: 0,
            child: Column(children: [
              Text('Don\'t have account? Sign Up!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.blueAccent,
                  fontSize: 16,
                ),

              )
            ],

            ),


          )



        ],




    ),
    );
  }




  _inputTextField(hintText, bool obscuretext) {
    return Container(
      height: 56,
      padding: EdgeInsets.fromLTRB(16, 3, 16, 6),
      margin: EdgeInsets.all(8),
      decoration: raisedDecoration,
      child: Center(
        child: TextField(
          obscureText: obscuretext,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black87,
              )),
        ),
      ),
    );
  }

  _labelText(title) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}

