import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/fastag/fastag_home.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/constants.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';

class DiselCardHome extends StatefulWidget {
  // const DiselCardHome({Key? key}) : super(key: key);
  static String id = 'DiselCardHome';

  @override
  State<DiselCardHome> createState() => _DiselCardHomeState();
}

class _DiselCardHomeState extends State<DiselCardHome> {
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
                /*Center(child: Text('Disel Card', style: TextStyle(
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
                        child: Text('Disel Card', style: TextStyle(
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
                                      'Add Card',
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
                                  padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
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
                                          236, 232, 232, 1.0),hintText: 'Search Truck No', suffixIcon: IconButton(
                                        icon: Icon(Icons.search, color: Colors.black),
                                        onPressed: () {},
                                      )),

                                    ),
                                  ),
                                ),


                                Expanded(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 20,),
                                          Image.asset('images/indianoilpic.png', width: 58, height: 70,),
                                          SizedBox(width: 10,),
                                          //----button code starts
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: 85,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                child: RoundedButton(colour: Color.fromRGBO(
                                                    160, 160, 161, 1.0), title: 'Activate Digital Card', onPressed:() async {
                                                  // EasyLoading.show(status: 'Loading...');
                                                  // Navigator.pushNamed(context, FasTagHome.id);
                                                }
                                                ),
                                              ),
                                            ),
                                          ),
                                          //----button code ends
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 20,),
                                          Image.asset('images/hppic.png', width: 58, height: 70,),
                                          SizedBox(width: 10,),
                                          //----button code starts
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: 85,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                child: RoundedButton(colour: Color.fromRGBO(
                                                    160, 160, 161, 1.0), title: 'Activate Digital Card', onPressed:() async {
                                                  // EasyLoading.show(status: 'Loading...');
                                                  // Navigator.pushNamed(context, EnquiryBank.id);
                                                }
                                                ),
                                              ),
                                            ),
                                          ),
                                          //----button code ends
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 20,),
                                          Image.asset('images/reliancepic.png', width: 58, height: 70,),
                                          SizedBox(width: 10,),
                                          //----button code starts
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: 85,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                child: RoundedButton(colour: Color.fromRGBO(
                                                    160, 160, 161, 1.0), title: 'Activate Digital Card', onPressed:() async {
                                                  // EasyLoading.show(status: 'Loading...');
                                                  // Navigator.pushNamed(context, EnquiryBank.id);
                                                }
                                                ),
                                              ),
                                            ),
                                          ),
                                          //----button code ends
                                        ],
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
