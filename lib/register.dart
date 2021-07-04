import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // appBar: AppBar(
        //   title: Text("Calculator"),
        // ),
        body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              height: 130,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
            SizedBox(height: 60),
            Container(
              padding: EdgeInsets.only(left: 45.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 45.0),
                  child: Text(
                    "Please provide us with few more\ndetails about yourself",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0),
              child: Column(children: <Widget>[
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: FormField(
                                  builder: (FormFieldState state) {
                                    return TextFormField(
                                      decoration: InputDecoration(
                                        labelText: "First Name",
                                        labelStyle: TextStyle(
                                          fontSize: 14,
                                        ),
                                        contentPadding: EdgeInsets.all(10),
                                        enabledBorder: new OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            borderSide: new BorderSide(
                                                color: Colors.lightBlueAccent)),
                                        focusedBorder: new OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            borderSide: new BorderSide(
                                                color: Colors.lightBlueAccent,
                                                width: 2)),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: FormField(
                                  builder: (FormFieldState state) {
                                    return TextFormField(
                                      decoration: InputDecoration(
                                        labelText: "Last Name",
                                        labelStyle: TextStyle(
                                          fontSize: 14,
                                        ),
                                        contentPadding: EdgeInsets.all(10),
                                        // border: OutlineInputBorder(
                                        //   borderRadius: BorderRadius.circular(5),
                                        //   borderSide: BorderSide(
                                        //     color: Colors.lightBlueAccent,
                                        //
                                        //   ),
                                        // ),
                                        enabledBorder: new OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            borderSide: new BorderSide(
                                                color: Colors.lightBlueAccent)),
                                        focusedBorder: new OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            borderSide: new BorderSide(
                                                color: Colors.lightBlueAccent,
                                                width: 2)),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              labelText: "Email address",
                            labelStyle: TextStyle(
                              fontSize: 14,
                            ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                            enabledBorder: new OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(9),
                                borderSide: new BorderSide(
                                    color: Colors.lightBlueAccent)),
                            focusedBorder: new OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(9),
                                borderSide: new BorderSide(
                                    color: Colors.lightBlueAccent,
                                    width: 2)),
                          ),
                        ),

                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.lightBlueAccent,
                          ),
                          child: Center(
                            child: Text(
                              "PROCEED",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    ));
  }
}
