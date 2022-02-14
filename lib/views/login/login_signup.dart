import 'package:flutter/material.dart';

class WidgetLogin extends StatefulWidget {
  const WidgetLogin({Key? key}) : super(key: key);

  @override
  _WidgetLoginState createState() => _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = "";
  String _passwd = "";

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

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,

              children:<Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("ToDo App",
                            style:TextStyle (
                                fontFamily: 'Nunito',
                                fontStyle: FontStyle.italic,
                                fontSize: 60.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 3.5,
                                shadows: [
                                  Shadow(color: Colors.black, blurRadius: 70, offset: Offset(0, 15))
                                ]
                            )
                      ),


                      SizedBox(height: 20,),

                      Form(
                        key: _formKey,
                        child:Container(
                          //color: Colors.red,
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  TextFormField(
                                    decoration: InputDecoration(helperText: "E-mail",
                                          helperStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary)
                                    ),
                                    autocorrect: false,
                                    style: TextStyle(
                                        color: Theme.of(context).colorScheme.onPrimary
                                    ),
                                    validator: (String? value){
                                      return (value != null && value.isEmpty) ? 'E-mail is required.' : null;
                                    },
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(helperText: "Password",
                                        helperStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary)
                                    ),
                                    obscureText: true,
                                    enableSuggestions: false,
                                    autocorrect: false,
                                    obscuringCharacter: "*",
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.onPrimary
                        ),
                                    validator: (String? value){
                                      return (value != null && value.isEmpty) ? 'Password is required.' : null;
                                    },
                                  ),
                                  SizedBox(height: 30,),
                                  Container(
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        mainAxisSize: MainAxisSize.max,

                                        children: [
                                          ElevatedButton(
                                            onPressed: () {print("a");},
                                            child: Text(
                                              'Sign-up',
                                              style: TextStyle(fontSize: 25.0),
                                            ),
                                          ),

                                          ElevatedButton(
                                            onPressed: () {print("a");},
                                            child: Text(
                                              'Login',
                                              style: TextStyle(fontSize: 25.0),
                                            ),
                                          )
                                          ],
                                    ),
                                  )
                                ],
                            ),
                          ),
                        ),
                      ),



                      Column(
                        children: [
                          Text("Login with Google"),
                          Text("Login with Apple ID")
                        ],
                      )
                    ]
                )
              ]

            ),
            //child: Text("hello"),
          ),
      ),
    );
  }
}
