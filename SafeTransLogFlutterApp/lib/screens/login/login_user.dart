import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';
import 'package:safetranslog/screens/login/verify_user_mobile.dart';

import '../../config/SizeConfig.dart';
import '../../config/constants.dart';

class LoginUser extends StatefulWidget {
  // const LoginUser({Key? key}) : super(key: key);
  static String id = 'LoginUser';
  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        // backgroundColor: Color.fromRGBO(2, 72, 254, 1.0),

        /*appBar: AppBar(
          // backgroundColor: Color.fromRGBO(71, 71, 71, 1.0),
          backgroundColor: Color.fromRGBO(2, 72, 254, 1.0),
          centerTitle: false,
          automaticallyImplyLeading: false,
          actions: [
            Builder(
                builder: (context) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Text('Hello ${EmployeeLogin.employeeJsonData['employee']['employee_full_name']} (${EmployeeLogin.employeeJsonData['user']['user_name']})', style: TextStyle(fontSize: 14, color: Colors.white),),
                        // MediaQuery.of(context).size.width > 950 ? Text('Hello nnnd nfnnfnnf fnnfnfnfnf', style: TextStyle(fontSize: 14, color: Colors.white),) : SizedBox(),

                        SizedBox(width: 10,),

                      ],
                    ),
                  );
                }
            ),
          ],

        ),*/
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
            child: Stack(
              children: [
                Column(
               crossAxisAlignment:CrossAxisAlignment.stretch,
               mainAxisAlignment:MainAxisAlignment.start,
               children: [
                 Align(
                     alignment: Alignment.centerRight,
                     child: Padding(
                       padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                       child: Image.asset("images/safetranslogappbarlogo.png", width: 164, height: 48,),
                     )),
                 SizedBox(height: 20,),
                 Image.asset("images/safetransloglogo.png", width: 150, height: 150,),
                 SizedBox(height: 20,),
                 Center(child: Text('SafeTranslog.com', style: TextStyle(color: Color.fromRGBO(
                     70, 70, 70, 1.0), fontSize: 20, fontWeight: FontWeight.bold),)),
               ],
                  ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        width: double.infinity,
                        // color: Colors.white,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(215, 227, 105, 1.0),
                                blurRadius: 15.0,
                                spreadRadius: 2.0,
                                offset: Offset(0.0, 0.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                            /*gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.white,
                                Colors.lightGreenAccent,

                              ],
                            )*/
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                              child: Text('Let\'s Start', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text('Enter your 10 digits Mobile No', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Color.fromRGBO(
                                  74, 74, 75, 1.0))),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: IntlPhoneField(
                                decoration: InputDecoration(
                                  // hintText: 'Phone Number'
                                  // labelText: 'Phone Number',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                initialCountryCode: 'IN',
                                onChanged: (phone) {
                                  print(phone.completeNumber);
                                },
                              ),
                            ),


                            //----button code starts
                            Container(
                              width: double.infinity,
                              height: 85,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: RoundedButton(colour: Color.fromRGBO(6, 66, 222, 1.0), title: 'Continue', onPressed:() async {
                                  // EasyLoading.show(status: 'Loading...');
                                  Navigator.pushNamed(context, VerifyUserMobile.id);
                                }
                                ),
                              ),
                            ),
                            //----button code ends

                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Text('Terms & Conditions | Privacy Policy', style: TextStyle(color: Color.fromRGBO(0, 70, 164, 1.0)),),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(22, 0, 22, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text('Updated on 28.04.2023', style: TextStyle(color: Colors.white),),
                          Text('Version 1.1', style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    )
                  ],
                )
              ]
            ),
          ),
        ),
      ),
    );
  }

}
