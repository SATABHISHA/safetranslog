import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/bid/loading/load_listing.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';
import 'package:safetranslog/screens/login/verify_user_mobile.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/constants.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';

enum PriceType {Fixed, PerTon}
enum PaymentType {Advance, ToPay}

class AddPaymentDetails extends StatefulWidget {
  // const AddPaymentDetails({Key? key}) : super(key: key);
  static String id = 'AddPaymentDetails';
  bool isAdvance = false;
  var expectedPrice = '24000.00', advanceAmount = '24000.00';

  @override
  State<AddPaymentDetails> createState() => _AddPaymentDetailsState();
}

class _AddPaymentDetailsState extends State<AddPaymentDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isDrawerOpen = false;
  final TextEditingController _expectedPriceController = new TextEditingController();
  final TextEditingController _advancePaymentController = new TextEditingController();

  PriceType? _pricetype = PriceType.Fixed;
  PaymentType? _paymenttype = PaymentType.ToPay;
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
                /*Center(child: Text('Payment Details', style: TextStyle(
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
                        child: Text('Payment Details', style: TextStyle(
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
                              children: [
                                SizedBox(height: 20,),
                                Center(child: Image(image: AssetImage('images/cardpic.png'), height: 186, width: 276,)),

                                Expanded(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      //---Expected Price, code starts
                                      SizedBox(height: 15,),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                          child: AutoSizeText(
                                            'Expected Price',
                                            style: TextStyle(color: Color.fromRGBO(
                                                0, 0, 0, 1.0),
                                                fontSize: 18,
                                                fontWeight: FontWeight.normal),
                                            wrapWords: true,
                                            minFontSize: 8,
                                            maxFontSize: 15,
                                            maxLines: 1,
                                            textAlign: TextAlign.left,),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                        child: SizedBox(
                                          width: double.infinity,
                                          height: 50,
                                          child: TextField(
                                            controller: _expectedPriceController,
                                            textAlign: TextAlign.left,
                                            keyboardType: TextInputType.number,
                                            maxLines: 1,
                                            onChanged: (value){
                                              // userId = value;
                                              setState(() {
                                                widget.expectedPrice = value;
                                              });

                                            },
                                            style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                            decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                                255, 255, 255, 1.0),hintText: '24000'),
                                          ),
                                        ),
                                      ),
                                      //---Expected Price, code ends

                                      //---radio button, code starts
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            child: ListTile(
                                              title: const Text('Fixed'),
                                              leading: Radio<PriceType>(
                                                value: PriceType.Fixed,
                                                groupValue: _pricetype,
                                                onChanged: (PriceType? value) {
                                                  setState(() {
                                                    _pricetype = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 1,
                                            child: ListTile(
                                              title: const Text('Per Ton'),
                                              leading: Radio<PriceType>(
                                                value: PriceType.PerTon,
                                                groupValue: _pricetype,
                                                onChanged: (PriceType? value) {
                                                  setState(() {
                                                    _pricetype = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                      //---radio button, code ends

                                      SizedBox(height: 15,),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                        child: Container(
                                            width: double.infinity, color: Color.fromRGBO(
                                            234, 234, 244, 1.0),
                                            child: Padding(
                                              // padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                                              padding: EdgeInsets.all(10.0),
                                              child: Text('How would you like to pay?', style: TextStyle(color: Colors.black,  fontSize: 15),),
                                            )
                                        ),
                                      ),

                                      //---radio button, code starts
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            child: ListTile(
                                              title: const Text('Advance'),
                                              leading: Radio<PaymentType>(
                                                value: PaymentType.Advance,
                                                groupValue: _paymenttype,
                                                onChanged: (PaymentType? value) {
                                                  setState(() {
                                                    _paymenttype = value;
                                                    widget.isAdvance = true;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 1,
                                            child: ListTile(
                                              title: const Text('To Pay'),
                                              leading: Radio<PaymentType>(
                                                value: PaymentType.ToPay,
                                                groupValue: _paymenttype,
                                                onChanged: (PaymentType? value) {
                                                  setState(() {
                                                    _paymenttype = value;
                                                    widget.isAdvance = false;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                      //---radio button, code ends


                                      //---for advance, code starts
                                      Visibility(
                                        visible: widget.isAdvance,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: 50,
                                            child: TextField(
                                              controller: _advancePaymentController,
                                              textAlign: TextAlign.left,
                                              keyboardType: TextInputType.number,
                                              maxLines: 1,
                                              onChanged: (value){
                                                // userId = value;
                                                setState(() {
                                                  if(double.parse(value.toString()) > double.parse(widget.expectedPrice)){
                                                    // print('Error');
                                                    _advancePaymentController.clear();
                                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                                      content: Text("Advance Payment amount should not be greater than expected amount"),
                                                    ));
                                                  }else{
                                                    widget.advanceAmount = value;
                                                  }
                                                });

                                              },
                                              style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                              decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                                  255, 255, 255, 1.0),hintText: widget.expectedPrice != ''? '${widget.expectedPrice}' : '24000'),
                                            ),
                                          ),
                                        ),
                                      ),
                                      //---for advance, code ends
                                      SizedBox(height: 15,),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                          child: AutoSizeText(
                                            'COC Consignment ?',
                                            style: TextStyle(color: Color.fromRGBO(
                                                0, 0, 0, 1.0),
                                                fontSize: 18,
                                                fontWeight: FontWeight.normal),
                                            wrapWords: true,
                                            minFontSize: 8,
                                            maxFontSize: 15,
                                            maxLines: 1,
                                            textAlign: TextAlign.left,),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Align(alignment: Alignment.centerLeft,
                                          child: FractionallySizedBox(widthFactor: 1, child: PinputExample(length: 3, crossAxisAlignment: CrossAxisAlignment.start,))),
                                      SizedBox(height: 10,),

                                      //---Remarks filed, code starts
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                                                255, 255, 255, 1.0),hintText: 'Put your Remarks here'),
                                          ),
                                        ),
                                      )
                                      //---Remarks filed, code ends
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
                                child: RoundedButton(colour: Color.fromRGBO(223, 137, 0, 1.0), title: 'NEXT', onPressed:() async {
                                  // EasyLoading.show(status: 'Loading...');
                                  Navigator.pushNamed(context, LoadListing.id);
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
