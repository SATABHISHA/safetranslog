import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';

class PumpPriceList extends StatefulWidget {
  // const PumpPriceList({Key? key}) : super(key: key);
static String id = 'PumpPriceList';
  @override
  State<PumpPriceList> createState() => _PumpPriceListState();
}

class _PumpPriceListState extends State<PumpPriceList> {
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
                        child: Text('Pump Wise Price List', style: TextStyle(
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
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: Container(
                              width: double.infinity,
                              color: Color.fromRGBO(217, 217, 217, 1.0),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    AutoSizeText('West Bengal', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                                    Row(
                                      children: [
                                        AutoSizeText('Average Disel Price', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),),
                                        SizedBox(width: 10,),
                                        AutoSizeText('92.90', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.green),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText('Petrol Pumps :', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
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
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  AutoSizeText('HP Petrol Pump Balaji', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),),
                                                  AutoSizeText('DN-60, Street Number 13 · 033 4006 2536', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Color.fromRGBO(
                                                      103, 103, 103, 1.0)),),
                                                  Row(
                                                    children: [
                                                      AutoSizeText('Average Disel Price', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),),
                                                      SizedBox(width: 10,),
                                                      AutoSizeText('92.90', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.green),),
                                                    ],
                                                  ),
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
                          )



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
