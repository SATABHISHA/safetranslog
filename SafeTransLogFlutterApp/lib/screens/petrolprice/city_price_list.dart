import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../widgets/reusable_common_widgets/navigation_drawer_list.dart';

class CityPriceList extends StatefulWidget {
  // const CityPriceList({Key? key}) : super(key: key);
  static String id = 'CityPriceList';

  @override
  State<CityPriceList> createState() => _CityPriceListState();
}

class _CityPriceListState extends State<CityPriceList> {
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
                        child: Text('City Wise Price List', style: TextStyle(
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
                                AutoSizeText('City Wise List :', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 1, color: Color.fromRGBO(
                                            219, 215, 215, 1.0))
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Container(width: 110, child: AutoSizeText('Andhra Pradesh', style: TextStyle(fontSize: 15, color: Colors.black),))),
                                          SizedBox(width: 10,),
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                AutoSizeText('+0.00', style: TextStyle(fontSize: 15, color: Colors.lightGreen)),
                                                SizedBox(width: 5,),
                                                Container(
                                                    width: 59,
                                                    height: 33,
                                                    color: Color.fromRGBO(
                                                        217, 217, 217, 1.0),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0), child: AutoSizeText('98.33', style: TextStyle(fontSize: 15, color: Color.fromRGBO(124, 123, 123, 1.0))),
                                                    )),
                                                SizedBox(width: 5,),
                                                Image.asset('images/rightarrowpic.png', width: 13, height: 13,)
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 1, color: Color.fromRGBO(
                                            219, 215, 215, 1.0))
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Container(width: 110,child: AutoSizeText('Arunachal Pradesh', style: TextStyle(fontSize: 15, color: Colors.black),))),
                                          SizedBox(width: 10,),
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                AutoSizeText('+0.00', style: TextStyle(fontSize: 15, color: Colors.red)),
                                                SizedBox(width: 5,),
                                                Container(
                                                    width: 59,
                                                    height: 33,
                                                    color: Color.fromRGBO(
                                                        217, 217, 217, 1.0),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0), child: AutoSizeText('98.33', style: TextStyle(fontSize: 15, color: Color.fromRGBO(124, 123, 123, 1.0))),
                                                    )),
                                                SizedBox(width: 5,),
                                                Image.asset('images/rightarrowpic.png', width: 13, height: 13,)
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 1, color: Color.fromRGBO(
                                            219, 215, 215, 1.0))
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,


                                        children: [
                                          Flexible(child: Container(width: 110,child: AutoSizeText('Assam', style: TextStyle(fontSize: 15, color: Colors.black),))),
                                          SizedBox(width: 10,),
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                AutoSizeText('+0.00', style: TextStyle(fontSize: 15, color: Colors.lightGreen)),
                                                SizedBox(width: 5,),
                                                Container(
                                                    width: 59,
                                                    height: 33,
                                                    color: Color.fromRGBO(
                                                        217, 217, 217, 1.0),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0), child: AutoSizeText('98.33', style: TextStyle(fontSize: 15, color: Color.fromRGBO(124, 123, 123, 1.0))),
                                                    )),
                                                SizedBox(width: 5,),
                                                Image.asset('images/rightarrowpic.png', width: 13, height: 13,)
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 1, color: Color.fromRGBO(
                                            219, 215, 215, 1.0))
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Container(width: 110, child: AutoSizeText('Bihar', style: TextStyle(fontSize: 15, color: Colors.black),))),
                                          SizedBox(width: 10,),
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                AutoSizeText('+0.00', style: TextStyle(fontSize: 15, color: Colors.lightGreen)),
                                                SizedBox(width: 5,),
                                                Container(
                                                    width: 59,
                                                    height: 33,
                                                    color: Color.fromRGBO(
                                                        217, 217, 217, 1.0),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0), child: AutoSizeText('98.33', style: TextStyle(fontSize: 15, color: Color.fromRGBO(124, 123, 123, 1.0))),
                                                    )),
                                                SizedBox(width: 5,),
                                                Image.asset('images/rightarrowpic.png', width: 13, height: 13,)
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 1, color: Color.fromRGBO(
                                            219, 215, 215, 1.0))
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Container(width: 110, child: AutoSizeText('Chattisgarh', style: TextStyle(fontSize: 15, color: Colors.black),))),
                                          SizedBox(width: 10,),
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                AutoSizeText('+0.00', style: TextStyle(fontSize: 15, color: Colors.red)),
                                                SizedBox(width: 5,),
                                                Container(
                                                    width: 59,
                                                    height: 33,
                                                    color: Color.fromRGBO(
                                                        217, 217, 217, 1.0),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0), child: AutoSizeText('98.33', style: TextStyle(fontSize: 15, color: Color.fromRGBO(124, 123, 123, 1.0))),
                                                    )),
                                                SizedBox(width: 5,),
                                                Image.asset('images/rightarrowpic.png', width: 13, height: 13,)
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 1, color: Color.fromRGBO(
                                            219, 215, 215, 1.0))
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Container(width: 110, child: AutoSizeText('Gujrat', style: TextStyle(fontSize: 15, color: Colors.black),))),
                                          SizedBox(width: 10,),
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                AutoSizeText('+0.00', style: TextStyle(fontSize: 15, color: Colors.lightGreen)),
                                                SizedBox(width: 5,),
                                                Container(
                                                    width: 59,
                                                    height: 33,
                                                    color: Color.fromRGBO(
                                                        217, 217, 217, 1.0),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0), child: AutoSizeText('98.33', style: TextStyle(fontSize: 15, color: Color.fromRGBO(124, 123, 123, 1.0))),
                                                    )),
                                                SizedBox(width: 5,),
                                                Image.asset('images/rightarrowpic.png', width: 13, height: 13,)
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 1, color: Color.fromRGBO(
                                            219, 215, 215, 1.0))
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Container(width: 110, child: AutoSizeText('Uttar Pradesh', style: TextStyle(fontSize: 15, color: Colors.black),))),
                                          SizedBox(width: 10,),
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                AutoSizeText('+0.00', style: TextStyle(fontSize: 15, color: Colors.red)),
                                                SizedBox(width: 5,),
                                                Container(
                                                    width: 59,
                                                    height: 33,
                                                    color: Color.fromRGBO(
                                                        217, 217, 217, 1.0),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0), child: AutoSizeText('98.33', style: TextStyle(fontSize: 15, color: Color.fromRGBO(124, 123, 123, 1.0))),
                                                    )),
                                                SizedBox(width: 5,),
                                                Image.asset('images/rightarrowpic.png', width: 13, height: 13,)
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 1, color: Color.fromRGBO(
                                            219, 215, 215, 1.0))
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(child: Container(width: 110, child: AutoSizeText('West Bengal', style: TextStyle(fontSize: 15, color: Colors.black),))),
                                          SizedBox(width: 10,),
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                AutoSizeText('+0.00', style: TextStyle(fontSize: 15, color: Colors.lightGreen)),
                                                SizedBox(width: 5,),
                                                Container(
                                                    width: 59,
                                                    height: 33,
                                                    color: Color.fromRGBO(
                                                        217, 217, 217, 1.0),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0), child: AutoSizeText('98.33', style: TextStyle(fontSize: 15, color: Color.fromRGBO(124, 123, 123, 1.0))),
                                                    )),
                                                SizedBox(width: 5,),
                                                Image.asset('images/rightarrowpic.png', width: 13, height: 13,)
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                    ),
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
