import 'dart:async';
import 'dart:io';

import 'package:ahhh_joh/Scenes/main_fill_status.dart';
import 'package:ahhh_joh/Scenes/main_invoice.dart';
import 'package:ahhh_joh/Scenes/main_label.dart';
import 'package:ahhh_joh/Scenes/main_order.dart';
import 'package:ahhh_joh/Scenes/main_pay_status.dart';
import 'package:ahhh_joh/Scenes/main_track.dart';
import 'package:ahhh_joh/Scenes/main_verify.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Scenes/main_label_view.dart';
import 'Scenes/main_scene.dart';
import 'Scenes/main_sign.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final FirebaseApp app = await Firebase.initializeApp (
    name: 'ahhh-joh',
    options: Platform.isIOS || Platform.isMacOS
        ? FirebaseOptions(
      appId: '1:431718394001:ios:ea821f61841baf47d77730',
      apiKey: 'AIzaSyCrFk3vep9vQXcjgiCEkKXj460Chwt6VYE',
      projectId: 'ahhh-joh',
      messagingSenderId: '431718394001',
      databaseURL: 'https://ahhh-joh.firebaseio.com/',
    )
        : FirebaseOptions(
      appId: '1:431718394001:android:89f116ddca94b6b1d77730',
      apiKey: 'AIzaSyCrFk3vep9vQXcjgiCEkKXj460Chwt6VYE',
      projectId: 'ahhh-joh',
      messagingSenderId: '431718394001',
      databaseURL: 'https://ahhh-joh.firebaseio.com/',
    ),
  );

  runApp(
      new MaterialApp(
        home: SplashScreen(app: app),
        routes: <String, WidgetBuilder> {
          '/sign': (BuildContext context) => new SignScreen(),
          '/main': (BuildContext context) => new MainScreen(),
          '/order' : (BuildContext context) => new OrderScreen(),
          '/label' : (BuildContext context) => new LabelScreen(),
          '/labelview' : (BuildContext context) => new LabelViewScreen(),
          '/fill' : (BuildContext context) => new FillStatusScreen(),
          '/pay' : (BuildContext context) => new PayStatusScreen(),
          '/track' : (BuildContext context) => new TrackScreen(),
          '/verify' : (BuildContext context) => new VerifyScreen(),
          '/invoice' : (BuildContext context) => new InvoiceScreen(),
        },
      )
  );
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black87, // navigation bar color
    statusBarColor: Colors.black87,
  ));
}

class SplashScreen extends StatefulWidget {
  SplashScreen({this.app});
  final FirebaseApp app;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Timer timer;

  void callMainScreen() {
    timer = Timer(
        const Duration(seconds: 2), () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignScreen(app: widget.app)));
        }
    );
  }

  @override
  void initState() {
    super.initState();
    callMainScreen();
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    var assersImage = new AssetImage('assets/imgs/logo.png');
    var logo = new Image(image: assersImage,
      width: 300,);

    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(color: Colors.black),
        child: new Center(
          child: logo,
        ),
      ),
    );
  }

}