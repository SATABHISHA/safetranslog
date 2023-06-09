import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/driver/driver_popup.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';

class ManageDriver extends StatefulWidget {
  // const ManageDriver({Key? key}) : super(key: key);
static String id = 'ManageDriver';
  @override
  State<ManageDriver> createState() => _ManageDriverState();
}

class _ManageDriverState extends State<ManageDriver> {
  var driverName, mobileNo;
  // final String mobileNo = '';
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isDrawerOpen = false;
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
                /*Center(child: Text('Wallet', style: TextStyle(
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
                        child: AutoSizeText('Manage Driver Number', style: TextStyle(
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
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: AutoSizeText('You will receive OTP on this number', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),),
                                ),

                                //----button code starts
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: double.infinity,
                                    height: 85,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      child: RoundedButton(colour: Color.fromRGBO(11, 7, 84, 1.0), title: 'Add New Number', onPressed:() async {
                                        // EasyLoading.show(status: 'Loading...');
                                        // Navigator.pushNamed(context, AddBank.id);

                                        showDialog(context: context, builder: (BuildContext context) {

                                          return DriverPopup(colorMessageBody: Colors.redAccent,driverName: driverName, driverMobNo: mobileNo, onPressed: (){

                                            setState(() {

                                              if(DriverPopup.name == '' || DriverPopup.mobno == ''){

                                                final scaffold = ScaffoldMessenger.of(context);
                                                scaffold.showSnackBar(
                                                  SnackBar(
                                                    content: Text('Field(s) cannot be left blank'),
                                                    action: SnackBarAction(label: 'OK', onPressed: (){
                                                      scaffold.hideCurrentSnackBar;

                                                    }),
                                                  ),
                                                );
                                              }else{
                                                this.driverName = driverName;
                                                this.mobileNo = mobileNo;
                                                Navigator.pop(context);
                                                print(driverName);
                                              }
                                            });
                                            },);
                                        });
                                      }
                                      ),
                                    ),
                                  ),
                                ),
                                //----button code ends

                                SizedBox(height: 15,),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      (DriverPopup.name == '' && DriverPopup.mobno == '') || (DriverPopup.name == '' || DriverPopup.mobno == '')? Container() :Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          AutoSizeText(DriverPopup.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                          AutoSizeText(DriverPopup.mobno, style: TextStyle(fontSize: 16)),

                                        ],
                                      ),
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            DriverPopup.name = '';
                                            DriverPopup.mobno = '';
                                          });
                                        },
                                        child: (DriverPopup.name == '' && DriverPopup.mobno == '') || (DriverPopup.name == '' || DriverPopup.mobno == '') ?Container():AutoSizeText('Unassign|Delete', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Color.fromRGBO(
                                            36, 62, 200, 1.0)),),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),


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
