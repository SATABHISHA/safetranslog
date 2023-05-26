import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';

class LoadListing extends StatefulWidget {
  // const LoadListing({Key? key}) : super(key: key);
  static String id = 'LoadListing';

  @override
  State<LoadListing> createState() => _LoadListingState();
}

class _LoadListingState extends State<LoadListing> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
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
                Center(child: Text('Load Listing', style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),)),
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
                      child: Stack(
                        children: [

                          ListView.builder(
                              itemCount: 1,
                              itemBuilder: (context, int index) {
                                return Padding(
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 200,
                                    decoration: BoxDecoration(color: Color.fromRGBO(242, 241, 248, 1.0), borderRadius: BorderRadius.circular(10.0)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              AutoSizeText('Kolkata To Shiliguri', style: TextStyle(color: Colors.blue, fontSize: 14),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  AutoSizeText('LCV Required', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                                  SizedBox(height: 5,),
                                                  Row(children: [Image.asset('images/truckpic.png', width: 25, height: 17.5,), SizedBox(width: 10,), AutoSizeText('4 Tones LCV', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),) ],),
                                                  SizedBox(height: 15,),
                                                  AutoSizeText('Rs 24000.00', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.redAccent)),
                                                  AutoSizeText('(asked price)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }
                          ),
                          //----button code starts
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.infinity,
                              height: 85,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: RoundedButton(colour: Color.fromRGBO(223, 137, 0, 1.0), title: 'POST LOAD', onPressed:() async {
                                  // EasyLoading.show(status: 'Loading...');
                                  // Navigator.pushNamed(context, AddNewLoading.id);
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
