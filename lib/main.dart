import 'package:calculator/homePage.dart';
import 'package:calculator/login.dart';
import 'package:calculator/register.dart';
import 'package:calculator/selectCity.dart';
import 'package:calculator/verifyNumber.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(primaryColor: Colors.lightBlueAccent),
    routes: <String, WidgetBuilder>{
      '/verify': (BuildContext context) => new Verify(),
      '/login': (BuildContext context) => Login(),
      '/register': (BuildContext context) => Register(),
      '/selectCity': (BuildContext context) => SelectCity(),
      '/homePage' : (BuildContext context) => HomePage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();

  final List<String> entries = <String>['A', 'B', 'C'];

  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: AppBar(
      //   title: Text("Calculator"),
      // ),
        body: SingleChildScrollView(
          child: Container(
            // margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 52.5,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'))),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    // IconData gpp_good_rounded = IconData(0xf7b4, fontFamily: 'MaterialIcons');
                    child: ListView(
                      // scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        ListTile(
                          title: Text(
                            'It is a common staple in the Indian subcontinent ',
                            style: TextStyle(fontSize: 15),
                          ),
                          leading: Icon(
                            Icons.gpp_good_outlined,
                            color: Colors.lightBlueAccent,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        ListTile(
                          title: Text(
                            'It is a common staple in the Indian subcontinent ',
                            style: TextStyle(fontSize: 15),
                          ),
                          leading: Icon(
                            Icons.gpp_good_outlined,
                            color: Colors.lightBlueAccent,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        ListTile(
                          title: Text(
                            'It is a common staple in the Indian subcontinent ',
                            style: TextStyle(fontSize: 15),
                          ),
                          leading: Icon(
                            Icons.gpp_good_outlined,
                            color: Colors.lightBlueAccent,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        ListTile(
                          title: Text(
                            'It is a common staple in the Indian subcontinent ',
                            style: TextStyle(fontSize: 15),
                          ),
                          leading: Icon(
                            Icons.gpp_good_outlined,
                            color: Colors.lightBlueAccent,
                            size: 30,
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    // width: double.maxFinite,
                    // height: 220,
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.max,
                        // mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              child: Text(
                                "Experience the real taste of Chappathi !",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(4.0),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 5,
                                    ),
                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).pushNamed('/homePage');
                                      },
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "GET STARTED",
                                            style: TextStyle(
                                                color: Colors.lightBlueAccent,
                                                fontSize: 17),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: <Widget>[
                                            RichText(
                                              text: TextSpan(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                      "Already have an account?"),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).pushNamed('/login');
                                      },
                                      child: Container(
                                          child: Text(
                                            "LOGIN",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                    SizedBox(height: 20,),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
