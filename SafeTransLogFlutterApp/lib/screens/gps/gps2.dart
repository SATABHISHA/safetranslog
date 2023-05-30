import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';

class Gps2 extends StatefulWidget {
  // const Gps2({Key? key}) : super(key: key);
static String id = "Gps2";

  @override
  State<Gps2> createState() => _Gps2State();
}

class _Gps2State extends State<Gps2> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        key: _scaffoldKey,
        drawer: NavigationDrawerList(
          callback: (isOpen) {
            print("isOpen ${isOpen}");
            WidgetsBinding.instance.addPostFrameCallback((_) {
              setState(() {
                if(isOpen == true){
                  _isDrawerOpen = true;
                }else{
                  _isDrawerOpen = false;
                }
              });
            });
          },
        ),
        body: Container(
          // color: Colors.lightGreenAccent,
          /*decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  // Color.fromRGBO(2, 72, 254, 1.0),
                  Colors.blue,
                  Colors.yellow,
                  Colors.redAccent,

                ],
              )
          ),*/
          color: Color.fromRGBO(2, 72, 254, 1.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max ,
              children: [
                /*Center(child: Text('Driver', style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),)),*/
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    /*IconButton(onPressed: () async{
                      print('Clicked');
                      // Drawer(child: NavigationDrawerList(),);
                      Scaffold.of(context).openDrawer();

                      }, icon: Image.asset('images/menupic.png', width: 24, height: 13.33,)),*/

                    Builder(
                        builder: (context) {
                          return IconButton(icon: Image.asset('images/menupic.png', width: 34, height: 15,), onPressed: () => Scaffold.of(context).openDrawer(),);
                        }
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: Text('GPS 2', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        /*boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(215, 227, 105, 1.0),
                            blurRadius: 15.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 0.0),
                          )
                        ],*/
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            /*Colors.white,
                            Colors.lightGreenAccent,*/
                            Color.fromRGBO(243, 238, 238, 1.0),
                            Color.fromRGBO(255, 255, 255, 1.0),
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText('See all GPS features', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                              ],
                            ),
                          ),

                          Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('images/vehiclepic.png', width: 27, height: 18,),
                                            SizedBox(width: 10,),
                                            Flexible(child: AutoSizeText('Real time vehicle track', style: TextStyle(fontSize: 17, color: Colors.black),))
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Image.asset('images/addpic.png', width: 15, height: 15,),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('images/vehiclepic.png', width: 27, height: 18,),
                                            SizedBox(width: 10,),
                                            Flexible(child: AutoSizeText('Theft Protection', style: TextStyle(fontSize: 17, color: Colors.black),))
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Image.asset('images/addpic.png', width: 15, height: 15,),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('images/vehiclepic.png', width: 27, height: 18,),
                                            SizedBox(width: 10,),
                                            Flexible(child: AutoSizeText('Pan-India Technical Network', style: TextStyle(fontSize: 17, color: Colors.black),))
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Image.asset('images/addpic.png', width: 15, height: 15,),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('images/vehiclepic.png', width: 27, height: 18,),
                                            SizedBox(width: 10,),
                                            Flexible(child: AutoSizeText('24/7 Customer Support', style: TextStyle(fontSize: 17, color: Colors.black),))
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Image.asset('images/addpic.png', width: 15, height: 15,),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('images/vehiclepic.png', width: 27, height: 18,),
                                            SizedBox(width: 10,),
                                            Flexible(child: AutoSizeText('Nearest Petrol Pump', style: TextStyle(fontSize: 17, color: Colors.black),))
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Image.asset('images/addpic.png', width: 15, height: 15,),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('images/vehiclepic.png', width: 27, height: 18,),
                                            SizedBox(width: 10,),
                                            Flexible(child: AutoSizeText('Nearby Vehicle', style: TextStyle(fontSize: 17, color: Colors.black),))
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Image.asset('images/addpic.png', width: 15, height: 15,),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('images/vehiclepic.png', width: 27, height: 18,),
                                            SizedBox(width: 10,),
                                            Flexible(child: AutoSizeText('Navigate', style: TextStyle(fontSize: 17, color: Colors.black),))
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Image.asset('images/addpic.png', width: 15, height: 15,),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('images/vehiclepic.png', width: 27, height: 18,),
                                            SizedBox(width: 10,),
                                            Flexible(child: AutoSizeText('Emergency', style: TextStyle(fontSize: 17, color: Colors.black),))
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Image.asset('images/addpic.png', width: 15, height: 15,),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('images/vehiclepic.png', width: 27, height: 18,),
                                            SizedBox(width: 10,),
                                            Flexible(child: AutoSizeText('Over speeding alert', style: TextStyle(fontSize: 17, color: Colors.black),))
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Image.asset('images/addpic.png', width: 15, height: 15,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                          /*Expanded(
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 5,
                                itemBuilder: (context, int index) {
                                  return Padding(
                                    padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                                    child: Container(
                                      width: double.infinity,
                                      child: Column(
                                        children: [

                                        ],
                                      ),
                                    ),
                                  );
                                }
                            ),
                          ),*/


                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
