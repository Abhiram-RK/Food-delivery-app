import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final phoneNumber = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
                  "Explore with your\nphone number",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0),
              child: Column(children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: phoneNumber,
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(1),
                            labelText: "Enter your phone number",
                            // prefixIcon: Icon(Icons.phone),
                            prefixText: "+91 ",
                            labelStyle: TextStyle(
                              color: Colors.lightBlueAccent,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.lightBlueAccent,
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 2,
                              color: Colors.lightBlueAccent,
                            )),
                          ),
                        ),

                        // IntlPhoneField(
                        //   // cursorColor: Colors.lightBlueAccent,
                        //   decoration: InputDecoration(
                        //     labelText: "Enter phone no",
                        //     labelStyle: TextStyle(
                        //       color: Colors.lightBlueAccent,
                        //     ),
                        //     enabledBorder: UnderlineInputBorder(
                        //       borderSide: BorderSide(
                        //         color: Colors.black38,
                        //       )
                        //     ),
                        //     focusedBorder: UnderlineInputBorder(
                        //   borderSide: BorderSide(
                        //   color: Colors.green,
                        //   )
                        // )),
                        //   initialCountryCode: 'IN',
                        //   onChanged: (phone) {
                        //     print(phone.completeNumber);
                        //   },
                        // ),

                        // IntlPhoneField(
                        //   decoration: InputDecoration(
                        //     // labelText: 'Phone number',
                        //     hintText: "Enter your phone number",
                        //     labelStyle: TextStyle(
                        //       color: Colors.lightBlueAccent,
                        //     ),
                        //     enabledBorder: UnderlineInputBorder(
                        //       borderSide: BorderSide(
                        //         color: Colors.lightBlueAccent,
                        //         width: 2,
                        //       ),
                        //     ),
                        //   ),
                        //   onCountryChanged: (phone) {
                        //     print('Country code changed to: ');
                        //   },
                        // ),
                        SizedBox(
                          height: 50,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/verify');
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.lightBlueAccent,
                            ),
                            child: Center(
                              child: Text(
                                "SEND OTP",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Text(
                            "Your phone number is safe with us,  we don't  use  your  mobile  number  for  any  unsolicited  communication",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
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
