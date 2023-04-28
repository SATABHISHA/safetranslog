

import 'package:flutter/material.dart';

class VerifyUserMobile extends StatefulWidget {
  // const VerifyUserMobile({Key? key}) : super(key: key);
  static String id = "VerifyUserMobile";

  @override
  State<VerifyUserMobile> createState() => _VerifyUserMobileState();
}

class _VerifyUserMobileState extends State<VerifyUserMobile> {
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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(child: Text('Verification', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),)),
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
                            )
                        ),
                        child: Column(
                          children: [
                            Image.asset("images/verification.png", width: 288, height: 225,),
                          ],
                        ),
                      ),
                    ),
                  )
                ]
            ),
          ),
        ),
      ),
    );
  }
}
