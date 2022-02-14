import 'package:flutter/material.dart';
import '../login/login_signup.dart';

import '../../themes/app_theme.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).colorScheme.onSecondary,
                ]
              )
            ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(60.0, 105, 60.0, 0.0),
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage:  NetworkImage(

                    'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg'))
                ),



              SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const WidgetLogin())
                      );
                  },
                  child: Text("Let's move on"),
                )),
              )
            ],
          ))
        ],
      ),
    )));
  }
}
