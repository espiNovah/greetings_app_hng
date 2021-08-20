import 'package:flutter/material.dart';

class Startup extends StatefulWidget {
  @override
  _StartupState createState() => _StartupState();
}

class _StartupState extends State<Startup> {
  String greet = "";
  String niceWorld = "";
  TextEditingController eCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[500],
        appBar: AppBar(
          title: Text(
            "Greetings App",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.emoji_emotions,
                color: Colors.white,
              ),
            ),
          ],
          elevation: 0.0,
          backgroundColor: Colors.green[500],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 8,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/zuri.png'),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "$greet. $niceWorld",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Text("\n \n"),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: TextField(
                            cursorColor: Colors.green[500],
                            controller: eCtrl,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.green[500],
                              ),
                              helperText: "Type your name and tap enter",
                              hintText: "What's your name?",
                            ),

                            // displays "User is typing" on console.
                            onTap: () {
                              print("User is typing");
                            },

                            // displays "User has submitted" on console.

                            onSubmitted: (String text) {
                              setState(() {
                                greet = text;
                                niceWorld = "I think you're awesome";
                              });
                              eCtrl.clear();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.jpg'),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
