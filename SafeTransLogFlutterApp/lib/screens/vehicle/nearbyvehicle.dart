import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';

class NearbyVehicle extends StatefulWidget {
  // const NearbyVehicle({Key? key}) : super(key: key);
static String id = 'NearbyVehicle';
  @override
  State<NearbyVehicle> createState() => _NearbyVehicleState();
}

class _NearbyVehicleState extends State<NearbyVehicle> {
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
                        child: Text('Nearby Vehicle', style: TextStyle(
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



                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                    child: Container(
                                      // width: 308,
                                        width: double.infinity,
                                        height: 403,
                                        child: Image.asset('images/nearbyvehicle.png', fit: BoxFit.fitWidth,)),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.loose,
                                          child: Container(
                                            decoration: BoxDecoration(color: Colors.white, border: Border.all(width: 1, color: Colors.red,), borderRadius: BorderRadius.circular(10.0)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: AutoSizeText('Vehicle(2)', style: TextStyle(color: Colors.redAccent), minFontSize: 10, maxFontSize: 15, maxLines: 1,),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.loose,
                                          child: Container(
                                            decoration: BoxDecoration(color: Colors.white, border: Border.all(width: 1, color: Colors.red,), borderRadius: BorderRadius.circular(10.0)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: AutoSizeText('Petrol Pump', style: TextStyle(color: Colors.redAccent), minFontSize: 10, maxFontSize: 15, maxLines: 1,),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.loose,
                                          child: Container(
                                            decoration: BoxDecoration(color: Colors.white, border: Border.all(width: 1, color: Colors.red,), borderRadius: BorderRadius.circular(10.0)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: AutoSizeText('Police Station', style: TextStyle(color: Colors.redAccent,), minFontSize: 10, maxFontSize: 15, maxLines: 1,),
                                            ),
                                          ),
                                        )


                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),


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
