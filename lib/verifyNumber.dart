import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class Verify extends StatelessWidget {
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
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
            SizedBox(height: 90),
            Container(
              padding: EdgeInsets.only(left: 45.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Verifying your phone\nnumber",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                          text: "OTP has been sent to 99xxxxxxx9",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: '  Edit Number ›',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.lightBlueAccent,
                          ),

                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: Text("Edit Number"),
                                ),
                              );
                            }),
                    ],
                  ),
                )
              ],
            )),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 45.0),
              child: OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 55,
                style: TextStyle(
                    fontSize: 25,
                  color: Colors.lightBlueAccent,
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(45.0),
              child: Column(children: <Widget>[
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
                            Navigator.of(context).pushNamed('/register');
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.lightBlueAccent,
                            ),
                            child: Center(
                              child: Text(
                                "VERIFY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 15),
                                children: <TextSpan>[
                                  TextSpan(text: "Didn't receive OTP?"),
                                  TextSpan(
                                      text: ' Resend OTP',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900),
                                  recognizer: TapGestureRecognizer()
                                      ..onTap = (){
                                        showDialog(context: context,
                                          builder: (BuildContext context) => AlertDialog(
                                            title: Text("Resend OTP"),
                                        )
                                        );
                                      }
                                  ),
                                ],
                              ),
                            )
                          ],
                        ))
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
