import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/constants.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/reusable_text_widget.dart';

class DriverPopup extends StatefulWidget {
  // const DriverPopup({Key? key}) : super(key: key);
  VoidCallback onPressed;
  var driverName, driverMobNo;
  Color colorMessageBody;
  static String name = '', mobno = '';
  DriverPopup({required this.colorMessageBody, required this.onPressed, required this.driverName, required this.driverMobNo});
  @override
  State<DriverPopup> createState() => _DriverPopupState();
}

class _DriverPopupState extends State<DriverPopup> {
  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _mobileNumberController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        /*borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
          side: BorderSide(width: 2, color: GlobalConstants.colorAppBar)*/
        // borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)), //---commented on 26th Oct 2022
        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5), bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5) ),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      child: contentBox(context),
    );
  }
  contentBox(context){

    return Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                // height: (MediaQuery.of(context).size.height-75),
                width: 350,
                // height: 250,
                // decoration: BoxDecoration(color: GlobalConstants.colorGridHeaderBackground,borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))), //---commented on 26th Oct
                decoration: BoxDecoration(color: Color.fromRGBO(
                    228, 232, 238, 1.0),borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5), bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5) )),
                child: Stack(
                  children: [
                   Padding(
                     padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             AutoSizeText('Assign Driver Number', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),),
                             InkWell(onTap: (){
                               Navigator.pop(context);
                             },child: Image.asset('images/close.png', width: 25, height: 21.88,)),
                           ],
                         ),

                         //---Full Name, code starts
                         SizedBox(height: 15,),
                         Padding(
                           padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                           child: SizedBox(
                             width: double.infinity,
                             height: 50,
                             child: TextField(
                               controller: _nameController,
                               textAlign: TextAlign.left,
                               keyboardType: TextInputType.text,
                               maxLines: 1,
                               onChanged: (value){
                                 // userId = value;
                                 setState(() {
                                   if(value.isEmpty){
                                     DriverPopup.name = '';
                                     widget.driverName = '';
                                   }else{
                                     DriverPopup.name = value;
                                     widget.driverName = value;
                                   }

                                 });
                               },
                               style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                               decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                   255, 255, 255, 1.0),hintText: 'Full Name'),
                             ),
                           ),
                         ),
                         //---Full Name, code ends

                         // ---Mobile Number, code starts
                         SizedBox(height: 15,),
                         Padding(
                           padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                           child: SizedBox(
                             width: double.infinity,
                             height: 70,
                             child: TextField(
                               controller: _mobileNumberController,
                               textAlign: TextAlign.left,
                               keyboardType: TextInputType.number,
                               maxLength: 10,
                               maxLines: 1,
                               onChanged: (value){
                                 // userId = value;
                                 setState(() {
                                   if(value.isEmpty){
                                     DriverPopup.mobno = '';
                                     widget.driverMobNo = '';
                                   }else{
                                     DriverPopup.mobno = value;
                                     widget.driverMobNo = value;
                                   }
                                 });
                               },
                               style: TextStyle(color: Colors.black, fontFamily: 'Gilroy'),
                               decoration: kTextFieldDecorationForMFA.copyWith(fillColor: Color.fromRGBO(
                                   255, 255, 255, 1.0),hintText: 'Mobile Number'),
                             ),
                           ),
                         ),
                         //---Mobile Number, code ends

                         SizedBox(height: 10,),
                         AutoSizeText('You will receive OTP on this number', style: TextStyle(fontWeight: FontWeight.normal, color: Color.fromRGBO(
                             45, 41, 41, 1.0), fontSize: 13),),
                         Container(
                           width: double.infinity,
                           height: 85,
                           child: Padding(
                             padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                             child: RoundedButton(colour: Color.fromRGBO(223, 137, 0, 1.0), title: 'Verify Number', onPressed: widget.onPressed
                             /*child: RoundedButton(colour: Color.fromRGBO(223, 137, 0, 1.0), title: 'Verify Number', onPressed:() async {
                               // EasyLoading.show(status: 'Loading...');

                               if(_mobileNumberController.text.isEmpty ||
                               _nameController.text.isEmpty){
                                 print('Error');
                                 final scaffold = ScaffoldMessenger.of(context);
                                 scaffold.showSnackBar(
                                   SnackBar(
                                     content: Text('Field(s) cannot be left blank'),
                                     action: SnackBarAction(label: 'OK', onPressed: (){
                                       scaffold.hideCurrentSnackBar;
                                       *//*if(ServiceProviderDetails.isLoad == false){
            Navigator.pushNamed(context, LoadListing.id);
          }*//*

                                     }),
                                   ),
                                 );
                               }else{
                                 Navigator.pop(context);


                               }
                             }*/
                             ),
                           ),
                         )
                       ],
                     ),
                   ),

                  ],

                ),
              )
            ],
          ),]
    );
  }
}
class Constants{
  Constants._();
  static const double padding =20;
  static const double avatarRadius =45;
}