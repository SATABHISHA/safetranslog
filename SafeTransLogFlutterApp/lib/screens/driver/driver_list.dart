import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/wallet/wallet_home.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';


class DriverList extends StatefulWidget {
  // const DriverList({Key? key}) : super(key: key);
static String id = "DriverList";
  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
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
          ),
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
                        child: Text('Driver', style: TextStyle(
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
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(215, 227, 105, 1.0),
                            blurRadius: 15.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.white,
                            Colors.lightGreenAccent,
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
                                AutoSizeText('All Driver List', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),),
                                MaterialButton(onPressed: () async {
                                  Navigator.pushNamed(context, WalletHome.id);
                                },child: AutoSizeText('Add', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.blueAccent),)),
                              ],
                            ),
                          ),

                          Expanded(
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
                                          Row(
                                            children: [
                                              Center(
                                                child: Container(width: 54, height: 54, decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Color.fromRGBO(
                                                    23, 171, 232, 1.0)), child: Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: Image.asset('images/profile.png'),
                                                ),),
                                              ),
                                              SizedBox(width: 15,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  AutoSizeText('Rohan Saha', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),),
                                                  AutoSizeText('Kolkata West Bengal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Color.fromRGBO(
                                                      176, 175, 175, 1.0)),),
                                                  AutoSizeText('9831098902', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Color.fromRGBO(
                                                      176, 175, 175, 1.0)),),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 15,),
                                          Container(width: double.infinity, height: 0.4, color: Color.fromRGBO(
                                              199, 198, 198, 1.0),)
                                        ],
                                      ),
                                    ),
                                  );
                                }
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
