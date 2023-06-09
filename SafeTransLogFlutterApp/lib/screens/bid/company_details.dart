import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/bid/loading/add_loading.dart';
import 'package:safetranslog/screens/bid/service_provider_details.dart';
import 'package:safetranslog/screens/kyc/kyc_name.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';


import '../../config/SizeConfig.dart';
import '../../widgets/reusable_common_widgets/constants.dart';
import '../login/rounded_button.dart';

class CompanyDetails extends StatefulWidget {
  // const CompanyDetails({Key? key}) : super(key: key);
  static String id = "CompanyDetails";
  static var companyName = 'ARB Software India Pvt Ltd';

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isDrawerOpen = false;
  // var email;

  String? validateEmail(String? value) {
    if (value != null) {
      if (value.length > 5 && value.contains('@') && value.endsWith('.com')) {
        return null;
      }
      return 'Enter a Valid Email Address';
    }
  }

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
                        child: Text('About Company', style: TextStyle(
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
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
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
                                            setState(() {
                                              CompanyDetails.companyName = value;
                                              if(value.isEmpty){
                                                CompanyDetails.companyName = 'ARB Software India Pvt Ltd';
                                              }else{
                                                CompanyDetails.companyName = value;
                                              }
                                            });
                                          },
                                          style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                          decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(246, 242, 242, 1.0),hintText: 'ARB Software India Pvt Ltd'),
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
                                              246, 242, 242, 1.0),hintText: 'Plot Y-7, Block EP Sector V Kolkata -700091'),
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
                                          keyboardType: TextInputType.number,
                                          onChanged: (value){
                                            // userId = value;
                                          },
                                          style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                          decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                              246, 242, 242, 1.0),hintText: '700021'),
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
                                        height: 80,
                                        child: TextField(
                                          // controller: _controller_user_id,
                                          textAlign: TextAlign.left,
                                          keyboardType: TextInputType.phone,
                                          maxLength: 10,
                                          onChanged: (value){
                                            // userId = value;
                                          },
                                          style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                          decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                              246, 242, 242, 1.0),hintText: '8595621546'),
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
                                        child: Form(
                                          autovalidateMode: AutovalidateMode.always,
                                          child: TextFormField(
                                            // controller: _controller_user_id,
                                            validator: validateEmail,
                                            textAlign: TextAlign.left,
                                            keyboardType: TextInputType.emailAddress,
                                            onChanged: (value){
                                              // userId = value;

                                            },
                                            style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                                            decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                                246, 242, 242, 1.0),hintText: 'satabhishar@arbsoft.com'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    //---Email Address, code ends
                                  ],
                                ),
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
                              // Navigator.pushNamed(context, ServiceProviderDetails.id);
                              if(ServiceProviderDetails.isLoad == true) {
                                Navigator.pushNamed(context, AddLoading.id);
                              }else{
                                Navigator.pushNamed(context, KycName.id);
                              }
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

