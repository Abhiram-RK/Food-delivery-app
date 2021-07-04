import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> City = ["Kochi", "Calicut", "Bangalore"];

class SelectCity extends StatefulWidget {
  @override
  _SelectCityState createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  final _formKey = GlobalKey<FormState>();

  final selectedCity =
      new List<String>.generate(City.length, (i) => "${City[i]}");
  int selectedIndex = -1;

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
              height: 30,
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
            SizedBox(height: 50),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 45.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Select your city",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            ListView.builder(
                shrinkWrap: true,
                itemCount: selectedCity.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 140, vertical: 5),
                    height: 90,
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: ListTile(
                        selected: selectedIndex == index ? true : false,
                        selectedTileColor: Colors.lightBlueAccent,
                       title: Align(
                            alignment: Alignment.center,
                            child: Text(
                              selectedCity[index],
                              style:
                                  TextStyle(fontSize: 11, color: Colors.black),
                            )),
                        onTap: () {
                          print(City[index]);
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                    ),
                  );
                }),

            Padding(
              padding: EdgeInsets.all(45.0),
              child: Column(children: <Widget>[
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: InkWell(
                    onTap: (){
                      if(selectedIndex != -1)
                        {
                          showDialog(
                              context: context, builder: (BuildContext context) =>
                            AlertDialog(
                              title: Text("City is selected"),
                              content: Text("Selected city - ${City[selectedIndex]}"),
                            )
                          );
                        }
                      else{
                        showDialog(
                          context: context,
                          builder: (BuildContext context)=>
                              AlertDialog(
                                title: Text("Please select your city"),
                                content: Text("If your city not on the list, Sorry! we are not in your city yet.\nWe will be start serving in your city soon.Meanwhile continue exploring JUST CHAPPATHI."),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.of(context).pop();
                                }
                                , child: Text("OK"))
                              ],
                              ),
                        );
                      }
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.lightBlueAccent,
                      ),
                      child: Center(
                        child: Text(
                          "NEXT STEP",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
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
