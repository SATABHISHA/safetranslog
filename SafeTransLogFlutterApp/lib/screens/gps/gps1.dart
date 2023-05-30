import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';

class Gps1 extends StatefulWidget {
  // const Gps1({Key? key}) : super(key: key);
static String id = 'Gps1';
  @override
  State<Gps1> createState() => _Gps1State();
}

class _Gps1State extends State<Gps1> {
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
          decoration: BoxDecoration(
              /*gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  // Color.fromRGBO(2, 72, 254, 1.0),
                  Colors.blue,
                  Colors.yellow,
                  Colors.redAccent,

                ],
              )*/
              color: Color.fromRGBO(2, 72, 254, 1.0)
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max ,
              children: [
                /*Center(child: Text('FasTag', style: TextStyle(
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
                        child: Text('GPS 1', style: TextStyle(
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
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 85),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),

                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                    child: AutoSizeText(
                                      'Buy GPS',
                                      style: TextStyle(color: Color.fromRGBO(
                                          37, 37, 37, 1.0),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                      wrapWords: true,
                                      minFontSize: 8,
                                      maxFontSize: 20,
                                      maxLines: 2,
                                      textAlign: TextAlign.left,),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                    child: AutoSizeText(
                                      'Track your vehicle with Best Vehicle Tracking Device',
                                      style: TextStyle(color: Color.fromRGBO(
                                          37, 37, 37, 1.0),
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal),
                                      wrapWords: true,
                                      minFontSize: 8,
                                      maxFontSize: 20,
                                      maxLines: 2,
                                      textAlign: TextAlign.left,),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                    child: Container(
                                        // width: 308,
                                        width: double.infinity,
                                        height: 238,
                                        child: Image.asset('images/mapdemopic.png', fit: BoxFit.fitWidth,)),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Expanded(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                        child: AutoSizeText(
                                          'GPS Plans and Pricing',
                                          style: TextStyle(color: Color.fromRGBO(
                                              37, 37, 37, 1.0),
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal),
                                          wrapWords: true,
                                          minFontSize: 8,
                                          maxFontSize: 20,
                                          maxLines: 2,
                                          textAlign: TextAlign.left,),
                                      ),
                                      SizedBox(height: 40,),

                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            AutoSizeText(
                                              'First Year Fee',
                                              style: TextStyle(color: Color.fromRGBO(
                                                  37, 37, 37, 1.0),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                              wrapWords: true,
                                              minFontSize: 8,
                                              maxFontSize: 20,
                                              maxLines: 2,
                                              textAlign: TextAlign.left,),
                                            AutoSizeText(
                                              '2750.00',
                                              style: TextStyle(color: Color.fromRGBO(
                                                  37, 37, 37, 1.0),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                              wrapWords: true,
                                              minFontSize: 8,
                                              maxFontSize: 20,
                                              maxLines: 2,
                                              textAlign: TextAlign.left,),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            AutoSizeText(
                                              'Next Year Fee',
                                              style: TextStyle(color: Color.fromRGBO(
                                                  37, 37, 37, 1.0),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                              wrapWords: true,
                                              minFontSize: 8,
                                              maxFontSize: 20,
                                              maxLines: 2,
                                              textAlign: TextAlign.left,),
                                            AutoSizeText(
                                              '2050.00',
                                              style: TextStyle(color: Color.fromRGBO(
                                                  37, 37, 37, 1.0),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                              wrapWords: true,
                                              minFontSize: 8,
                                              maxFontSize: 20,
                                              maxLines: 2,
                                              textAlign: TextAlign.left,),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //----button code starts
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.infinity,
                              height: 85,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: RoundedButton(colour: Color.fromRGBO(223, 137, 0, 1.0), title: 'Buy this Plan', onPressed:() async {
                                  // EasyLoading.show(status: 'Loading...');
                                  // Navigator.pushNamed(context, FasTagPayment.id);
                                }
                                ),
                              ),
                            ),
                          ),
                          //----button code ends
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
