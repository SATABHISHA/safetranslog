import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/config/CustomSnackBar.dart';
import 'package:safetranslog/screens/fastag/fastag_home.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/constants.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/resusable_dropdown_formfield.dart';

class FasTagPayment extends StatefulWidget {
  // const FasTagPayment({Key? key}) : super(key: key);
  static String id = 'FasTagPayment';

  @override
  State<FasTagPayment> createState() => _FasTagPaymentState();
}

class _FasTagPaymentState extends State<FasTagPayment> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isDrawerOpen = false;
  var insuranceCharge = '99.00';

  final GlobalKey<FormFieldState> _vehicleDropDown = new GlobalKey<FormFieldState>();
  final List<String> vehicleModelList = ['1'];
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
                        child: Text('FasTag', style: TextStyle(
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

                                Expanded(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                          child: AutoSizeText(
                                            'Payment Details',
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
                                      SizedBox(height: 15,),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                          child: AutoSizeText(
                                            'Number of Vehicle(s):',
                                            style: TextStyle(color: Color.fromRGBO(
                                                86, 85, 85, 1.0),
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                            wrapWords: true,
                                            minFontSize: 8,
                                            maxFontSize: 15,
                                            maxLines: 1,
                                            textAlign: TextAlign.left,),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                        child: Container(
                                          height: 30,
                                          color: Colors.white,
                                          child: ReusabeleDropDownButtonFormField(
                                            key: _vehicleDropDown,
                                            dropDownCustomDecorationPersonalDataMgnt: dropDownCustomDecorationPersonalDataMgntWeb,
                                            hintName: '1',
                                            list:  vehicleModelList
                                                .where((e) => e != null) //removes null items
                                                .toSet()
                                                .map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ))
                                                .toList(),
                                            onChanged: (value){
                                              /* proficiencyListSelectedValue = value.toString();
                                          print('Testing898-=>$proficiencyListSelectedValue');*/

                                            },
                                            onSaved: (value){},
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                        child: Container(
                                          width: double.infinity,
                                          color: Color.fromRGBO(253, 235, 171, 1.0),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                AutoSizeText(
                                                  'Bill Details',
                                                  style: TextStyle(color: Color.fromRGBO(
                                                      37, 37, 37, 1.0),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold),
                                                  wrapWords: true,
                                                  minFontSize: 8,
                                                  maxFontSize: 20,
                                                  maxLines: 2,
                                                  textAlign: TextAlign.left,),
                                                SizedBox(height: 10,),
                                                Container(width: double.infinity, height: 0.5, color: Color.fromRGBO(
                                                    126, 126, 126, 1.0),),
                                                SizedBox(height: 20,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    AutoSizeText(
                                                      'Fastag Cost',
                                                      style: TextStyle(color: Color.fromRGBO(
                                                          37, 37, 37, 1.0),
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.normal),
                                                      wrapWords: true,
                                                      minFontSize: 8,
                                                      maxFontSize: 20,
                                                      maxLines: 2,
                                                      textAlign: TextAlign.left,),
                                                    AutoSizeText(
                                                      '${FasTagHome.rechargeAmount}',
                                                      style: TextStyle(color: Color.fromRGBO(
                                                          37, 37, 37, 1.0),
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.normal),
                                                      wrapWords: true,
                                                      minFontSize: 8,
                                                      maxFontSize: 20,
                                                      maxLines: 2,
                                                      textAlign: TextAlign.left,),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    AutoSizeText(
                                                      'Insurance Charges',
                                                      style: TextStyle(color: Color.fromRGBO(
                                                          37, 37, 37, 1.0),
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.normal),
                                                      wrapWords: true,
                                                      minFontSize: 8,
                                                      maxFontSize: 20,
                                                      maxLines: 2,
                                                      textAlign: TextAlign.left,),
                                                    AutoSizeText(
                                                      '99.00',
                                                      style: TextStyle(color: Color.fromRGBO(
                                                          37, 37, 37, 1.0),
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.normal),
                                                      wrapWords: true,
                                                      minFontSize: 8,
                                                      maxFontSize: 20,
                                                      maxLines: 2,
                                                      textAlign: TextAlign.left,),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    AutoSizeText(
                                                      'Total Payable',
                                                      style: TextStyle(color: Color.fromRGBO(
                                                          37, 37, 37, 1.0),
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.bold),
                                                      wrapWords: true,
                                                      minFontSize: 8,
                                                      maxFontSize: 20,
                                                      maxLines: 2,
                                                      textAlign: TextAlign.left,),
                                                    AutoSizeText(
                                                      '${double.parse(FasTagHome.rechargeAmount)+ double.parse(insuranceCharge)}',
                                                      style: TextStyle(color: Color.fromRGBO(
                                                          37, 37, 37, 1.0),
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.bold),
                                                      wrapWords: true,
                                                      minFontSize: 8,
                                                      maxFontSize: 20,
                                                      maxLines: 2,
                                                      textAlign: TextAlign.left,),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                        child: AutoSizeText(
                                          'Paym from your Wallet',
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

                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                        child: Row(
                                          children: [
                                            Image.asset('images/walletpicblack.png', width: 49, height: 34,),
                                            SizedBox(width: 25,),
                                            AutoSizeText('Balance:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black),),
                                            AutoSizeText('500.00', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                                          ],
                                        ),
                                      )
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
                                child: RoundedButton(colour: Color.fromRGBO(223, 137, 0, 1.0), title: 'Pay Now', onPressed:() async {
                                  // EasyLoading.show(status: 'Loading...');
                                  // Navigator.pushNamed(context, DiselCardHome.id);
                                  CustomSnackBar.showToast(context, title: 'Payment done successfully');
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
