import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../config/SizeConfig.dart';
import '../../widgets/reusable_common_widgets/constants.dart';

class CompanyDetails extends StatefulWidget {
  // const CompanyDetails({Key? key}) : super(key: key);
  static String id = "CompanyDetails";

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
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
                Center(child: Text('About Company', style: TextStyle(
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Center(
                              child: CircleAvatar(backgroundColor: Colors.blueAccent, radius: 30,
                                child: CircleAvatar(backgroundColor: Colors.blueAccent, radius: 25, backgroundImage: AssetImage('images/companyprofilepic.png'),),

                                ),
                            ),
                            AutoSizeText(
                              'Enter your Company Details ',
                              style: TextStyle(color: Color.fromRGBO(
                                  37, 37, 37, 1.0),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              wrapWords: true,
                              minFontSize: 8,
                              maxFontSize: 20,
                              maxLines: 2,
                              textAlign: TextAlign.center,),
                            Expanded(
                              child: ListView(
                                shrinkWrap: true,
                                children: [
                                  //---Company Details, code starts
                                  SizedBox(height: 15,),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: AutoSizeText(
                                        'Company Name',
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
                                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 50,
                                      child: TextField(
                                        // controller: _controller_user_id,
                                        textAlign: TextAlign.left,
                                        keyboardType: TextInputType.text,
                                        maxLines: 1,
                                        onChanged: (value){
                                          // userId = value;
                                        },
                                        style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                        decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                            246, 242, 242, 1.0),hintText: 'Enter Company Name'),
                                      ),
                                    ),
                                  ),
                                  //---Company Details, code ends
                                  //---Address, code starts
                                  SizedBox(height: 15,),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: AutoSizeText(
                                        'Address',
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
                                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 50,
                                      child: TextField(
                                        // controller: _controller_user_id,
                                        textAlign: TextAlign.left,
                                        keyboardType: TextInputType.text,
                                        onChanged: (value){
                                          // userId = value;
                                        },
                                        style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                        decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                            246, 242, 242, 1.0),hintText: ''),
                                      ),
                                    ),
                                  ),
                                  //---Address, code ends

                                  //---ZipCode, code starts
                                  SizedBox(height: 15,),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: AutoSizeText(
                                        'Zip Code',
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
                                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 50,
                                      child: TextField(
                                        // controller: _controller_user_id,
                                        textAlign: TextAlign.left,
                                        keyboardType: TextInputType.text,
                                        onChanged: (value){
                                          // userId = value;
                                        },
                                        style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                        decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                            246, 242, 242, 1.0),hintText: ''),
                                      ),
                                    ),
                                  ),
                                  //---ZipCode, code ends

                                  //---Phone No, code starts
                                  SizedBox(height: 15,),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: AutoSizeText(
                                        'Phone No',
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
                                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 50,
                                      child: TextField(
                                        // controller: _controller_user_id,
                                        textAlign: TextAlign.left,
                                        keyboardType: TextInputType.text,
                                        onChanged: (value){
                                          // userId = value;
                                        },
                                        style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                        decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                            246, 242, 242, 1.0),hintText: ''),
                                      ),
                                    ),
                                  ),
                                  //---Phone No, code ends

                                  //---Email Address, code starts
                                  SizedBox(height: 15,),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: AutoSizeText(
                                        'Email Address',
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
                                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 50,
                                      child: TextField(
                                        // controller: _controller_user_id,
                                        textAlign: TextAlign.left,
                                        keyboardType: TextInputType.text,
                                        onChanged: (value){
                                          // userId = value;
                                        },
                                        style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                        decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                            246, 242, 242, 1.0),hintText: ''),
                                      ),
                                    ),
                                  ),
                                  //---Email Address, code ends
                                ],
                              ),
                            ),



                          ],
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