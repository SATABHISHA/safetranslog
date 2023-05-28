import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/bid/loading/bid_confirmation.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/constants.dart';

class PlaceBid extends StatefulWidget {
  // const PlaceBid({Key? key}) : super(key: key);
  static String id = 'PlaceBid';

  @override
  State<PlaceBid> createState() => _PlaceBidState();
}

class _PlaceBidState extends State<PlaceBid> {
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
                Center(child: Text('Place your Bid', style: TextStyle(
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Container(width: 54, height: 54, decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Color.fromRGBO(187, 186, 180, 1.0)), child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset('images/profile.png'),
                                      ),),
                                    ),
                                    SizedBox(width: 15,),
                                    Center(child: AutoSizeText('Calcutta Express Company', style: TextStyle(fontSize: 14, color: Colors.black),textAlign: TextAlign.center,)),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText('LCV Required', style: TextStyle(fontSize: 14, color: Colors.black),textAlign: TextAlign.center,),
                                        SizedBox(height: 10,),
                                        AutoSizeText('Kolkata To Shiliguri', style: TextStyle(fontSize: 14, color: Colors.blueAccent),textAlign: TextAlign.center,),
                                      ],
                                    ),
                                    Image.asset('images/truckpic.png', width: 51, height: 36,)
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              //---Price filed, code starts
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: AutoSizeText(
                                  'Enter Your Price',
                                  style: TextStyle(color: Color.fromRGBO(
                                      133, 132, 132, 1.0),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                  wrapWords: true,
                                  minFontSize: 8,
                                  maxFontSize: 15,
                                  maxLines: 1,
                                  textAlign: TextAlign.left,),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 100,
                                  child: TextFormField(
                                    textAlign: TextAlign.left,
                                    keyboardType: TextInputType.text,
                                    maxLines: 10,
                                    onChanged: (value){
                                      // userId = value;
                                    },
                                    style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                    decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                        246, 242, 242, 1.0),hintText: ''),
                                  ),
                                ),
                              ),
                              //---Price filed, code ends

                              //----button code starts
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 150,
                                  height: 75,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: RoundedButton(colour: Color.fromRGBO(223, 137, 0, 1.0), title: 'Place Bid', onPressed:() async {
                                      // EasyLoading.show(status: 'Loading...');
                                      Navigator.pushNamed(context, BidConfirmation.id);
                                    }
                                    ),
                                  ),
                                ),
                              ),
                              //----button code ends
                            ],
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
