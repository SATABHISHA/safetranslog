import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/fastag/fastag_payment.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/constants.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/resusable_dropdown_formfield.dart';

class FasTagHome extends StatefulWidget {
  // const FastTagHome({Key? key}) : super(key: key);
static String id = 'FasTagHome';
static var rechargeAmount = '200';
  @override
  State<FasTagHome> createState() => _FasTagHomeState();
}

class _FasTagHomeState extends State<FasTagHome> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final TextEditingController _rechargeAmountController = new TextEditingController();
  bool _isDrawerOpen = false;

  final GlobalKey<FormFieldState> _fastTagBankProviderDropDown = new GlobalKey<FormFieldState>();
  final List<String> fastTagBankList = ['ICICI','HDFC'];
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

                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                    child: AutoSizeText(
                                      'Add FasTag',
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
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: Image.asset('images/fasttagpic.png', width: 322, height: 52.4,),
                                ),
                                Expanded(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      //---FasTag Provider, code starts
                                      SizedBox(height: 15,),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                          child: AutoSizeText(
                                            'Choose FasTag Provider:',
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
                                            key: _fastTagBankProviderDropDown,
                                            dropDownCustomDecorationPersonalDataMgnt: dropDownCustomDecorationPersonalDataMgntWeb,
                                            hintName: 'Choose Bank',
                                            list:  fastTagBankList
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
                                      //---FasTag Provider dropdown, code ends

                                      //---Recharge amount, code starts
                                      SizedBox(height: 15,),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                          child: AutoSizeText(
                                            'Enter Recharge Amount',
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
                                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                        child: SizedBox(
                                          width: double.infinity,
                                          height: 50,
                                          child: TextField(
                                            controller: _rechargeAmountController,
                                            textAlign: TextAlign.left,
                                            keyboardType: TextInputType.number,
                                            maxLines: 1,
                                            onChanged: (value){
                                              // userId = value;
                                              setState(() {
                                                FasTagHome.rechargeAmount = value;
                                                if(value.isEmpty){
                                                  FasTagHome.rechargeAmount = '200';
                                                }else{
                                                  FasTagHome.rechargeAmount = value;
                                                }
                                              });

                                            },
                                            style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                            decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                                255, 255, 255, 1.0),hintText: '200'),
                                          ),
                                        ),
                                      ),
                                      //---Recharge amount, code ends

                                      //---Plan Detail, code starts
                                      SizedBox(height: 15,),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                          child: AutoSizeText(
                                            'Plan Detail',
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
                                                255, 255, 255, 1.0),hintText: ''),
                                          ),
                                        ),
                                      ),
                                      //---Plan Detail, code ends
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
                                  Navigator.pushNamed(context, FasTagPayment.id);
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
