// == Importing Styles
import 'themes/app_theme.dart';

// == Importing Views
import 'views/welcome/welcome.dart';

// == From the Pubspecs
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {runApp(const StartUp());}

class StartUp extends StatelessWidget {
  const StartUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo-List',
      home: WelcomeScreen(),
      theme: AppTheme.defineLight(),
      darkTheme: AppTheme.defineDark(),
    );
  }
}

