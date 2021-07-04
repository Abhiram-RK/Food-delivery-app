import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    // final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return new Scaffold(

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(context: context, builder: (BuildContext context)=>
            AlertDialog(
              title: Text("You can chat"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                    child: Text("OK"))
              ],
            ),);
          },
          child: const Icon(Icons.chat_bubble),
          backgroundColor: Colors.lightBlueAccent,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

        appBar: AppBar(
          title: Text(
            "JUST CHAPPATHI",
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
          ),
          backgroundColor: Colors.lightBlueAccent,
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Menu",
            onPressed: () {},
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined),
              color: Colors.white,
              iconSize: 25,
            ),
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                FractionallySizedBox(
                  widthFactor: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    height: 40,
                    // width: displayWidth(context),
                    decoration: BoxDecoration(color: Colors.lightBlueAccent),
                    child: Text(
                      "Search for variety chappathis",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  decoration: BoxDecoration(color: Colors.lightBlueAccent),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "What do you wish to try today?",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.all(5),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.lightBlueAccent,
                        size: 30,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      // border: OutlineInputBorder(
                      //   borderSide: BorderSide(width: 0,color: Colors.white),
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(width: 0, color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 17),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Offers Around",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                        title: Text("View all"),
                                      ));
                            },
                            child: Text(
                              "View all >>",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.lightBlueAccent),
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 120,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int i) => Card(
                        color: Colors.grey,
                        child: Container(
                          width: 160.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[],
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Best sellers",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          height: 120,
                          child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: ListTile(
                              // selected: selectedIndex == index ? true : false,
                              selectedTileColor: Colors.lightBlueAccent,
                              // title: Align(
                              //     alignment: Alignment.center,
                              //     child: Text(
                              //       selectedCity[index],
                              //       style:
                              //       TextStyle(fontSize: 11, color: Colors.black),
                              //     )),
                              onTap: () {
                                // print(City[index]);
                                setState(() {
                                  // selectedIndex = index;
                                });
                              },
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ));
  }
}
