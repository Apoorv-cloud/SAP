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
          "assets/Logo.png",
          height: 100.0,
          width: 140.0,
        ),
          actions: <Widget>[
               Container(
                 padding: EdgeInsets.only(right:8, top:15, bottom:15),
                child:Image.asset("assets/mall-bag.png",
           width: 60,
        ),),
         Container(
                 padding: EdgeInsets.only(right:5, top:15, bottom:15),
       child:  Image.asset(
          "assets/line.png",
          width: 30,
        ),)
        ]

    ),

      backgroundColor: Colors.white,
      //backgroundColor: Colors.white,

   body: Stack(
        children: [
          Positioned(
            top: 0,
            right: -5,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height-680,
              width: MediaQuery.of(context).size.width-350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img.png"),
                  fit: BoxFit.fitWidth             )
              ),
          ),),

          Positioned(
            top: 83,
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

                      SizedBox(height: 8),

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
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Serif",
                              // fontStyle: ,

                            ),
                          ),
                        ),
                      ),


                      SizedBox(height: 15),
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
                          width: 300,
                          child: new RaisedButton(
                            onPressed: () => {
                              //TODO
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            color: Colors.blue[500],
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
            top: MediaQuery.of(context).size.height-280,
            right: 0,
            left: 0,
            child: Column(
              children: [
              Divider(
                color: Colors.blue,
                height: 5,
                endIndent: 30,
                indent: 30,

              ),

              SizedBox(height: 20),

              Text(
                  "Or sign-in with",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[500],

              ),),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                   _loginSocialMediaBtn(
                  'assets/google-icon 1.png'),

                  SizedBox(width: 30),

                  _loginSocialMediaBtn(
                      'assets/Vector.png'),
                ],
              ),


            ],),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height-130,
            right: 0,
            left: 0,
            child: Column(children: [
              Text('Don\'t have an account? Sign Up!',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue[500],
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



  //button to login in using scial media,
  _loginSocialMediaBtn(String img) {
    return SizedBox.fromSize(
      size: Size(40, 40),
      child: Container(
            decoration: new BoxDecoration(
              border: Border.all(width: 1, color: Colors.blue[500]),
              borderRadius: new BorderRadius.all(Radius.circular(5.0)),
              shape: BoxShape.rectangle,

            ), //button width and height
       child:ClipRRect(
        //borderRadius: BorderRadius.circular(5),
        child: Material(
          elevation: 16,
          shadowColor: Colors.white,
          color: Colors.white70,
          child: InkWell(
            splashColor: Colors.white,
            onTap: () {},
            child: Center(
              child: Image.asset(
                img,
              ),
            ),
          ),
        ),
      ),
    ));
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
          color: Colors.grey[500],
          fontSize: 12,
        ),
      ),
    );
  }
}

