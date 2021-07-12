import 'package:datapresistence/pages/error.dart';
import 'package:datapresistence/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChannels.textInput.invokeMethod('TextInput.hide');
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    try{
      return MaterialApp(
        title: 'DATA PERSISTENCE',
        theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LandingPage(),
      );
    }catch(e){
      return MaterialApp(
        title: "Error Handler",
        theme: ThemeData(
            primaryColor: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        home: ErrorView(),
      );
    }
  }
}
