import 'package:datapresistence/data_container/logged_user.dart';
import 'package:datapresistence/models/user.dart';
import 'package:datapresistence/services/app.dart';
import 'package:datapresistence/services/auth.dart';
import 'package:datapresistence/services/database.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  DatabaseController dbController = new DatabaseController();
  fetch() async {
    await Auth().login('user1@gmail.com', 'test123');
  }
  @override
  void initState() {
    // TODO: implement initState
    this.fetch();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeFetcher(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Text(userDetails.name),
          ),
          GestureDetector(
            onTap: () async {
              dbController.init(tableName: "users").withData(
                  fromTBL: [['event', 'id']]
              ).count;
            },
            child: Text("${userDetails.password}"),
          )
        ],
      ),
    );
  }
}
