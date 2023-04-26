import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';

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
        backgroundColor: Color.fromRGBO(2, 72, 254, 1.0),
        appBar: AppBar(
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

        ),
        body: Container(
          // color: Colors.lightGreenAccent,
          child: Stack(
            children: [
              Column(
             crossAxisAlignment:CrossAxisAlignment.stretch,
             mainAxisAlignment:MainAxisAlignment.start,
             children: [
               SizedBox(height: 20,),
               Image.asset("images/safetransloglogo.png", width: 150, height: 150,),
               SizedBox(height: 20,),
               Center(child: Text('SafeTranslog.com', style: TextStyle(color: Colors.white, fontSize: 20),)),
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
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text('Let\'s Start', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
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
                            child: RoundedButton(colour: GlobalConstants.colorSubAppBar, title: 'Continue', onPressed:() async {
                              // EasyLoading.show(status: 'Loading...');

                            }
                            ),
                          ),
                          //----button code ends
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ]
          ),
        ),
      ),
    );
  }

}
