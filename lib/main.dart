// == Importing Views
import 'views/welcome/welcome.dart';

// == From the Pubspecs
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo-List',
      home: WelcomeScreen(),
    );
  }
}

