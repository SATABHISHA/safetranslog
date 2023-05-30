import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/bid/loading/add_loading.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';

import '../login/rounded_button.dart';

enum Service {load, individual, transporter, agent}

class ServiceProviderDetails extends StatefulWidget {
  // const ServiceProviderDetails({Key? key}) : super(key: key);
 static String id = 'ServiceProviderDetails';
  @override
  State<ServiceProviderDetails> createState() => _ServiceProviderDetailsState();
}

class _ServiceProviderDetailsState extends State<ServiceProviderDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isDrawerOpen = false;
  Service? _character = Service.load;
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
                  /*Center(child: Text('Service Provider', style: TextStyle(
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
                          child: Text('Service Provider', style: TextStyle(
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
                                  AutoSizeText(
                                    'Few Information Before\nRegistration',
                                    style: TextStyle(color: Color.fromRGBO(
                                        37, 37, 37, 1.0),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    wrapWords: true,
                                    minFontSize: 8,
                                    maxFontSize: 20,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,),
                                  SizedBox(height: 30,),
                                  Expanded(
                                    child: ListView(
                                      shrinkWrap: true,
                                      children: [
                                        ListTile(
                                          title: const Text('Load',),
                                          leading: Radio<Service>(
                                            value: Service.load,
                                            groupValue: _character,
                                            onChanged: (Service? value) {
                                              setState(() {
                                                _character = value;
                                              });
                                            },
                                          ),
                                          trailing: Image.asset('images/trucktypeicon.png', height: 35, width: 35,),
                                          tileColor: Colors.blueAccent,
                                        ),
                                        ListTile(
                                          title: const Text('Individual'),
                                          leading: Radio<Service>(
                                            value: Service.individual,
                                            groupValue: _character,
                                            onChanged: (Service? value) {
                                              setState(() {
                                                _character = value;
                                              });
                                            },
                                          ),
                                          trailing: Image.asset('images/trucktypeicon.png', height: 35, width: 35,),
                                        ),
                                        ListTile(
                                          title: const Text('Transporter'),
                                          leading: Radio<Service>(
                                            value: Service.transporter,
                                            groupValue: _character,
                                            onChanged: (Service? value) {
                                              setState(() {
                                                _character = value;
                                              });
                                            },
                                          ),
                                          trailing: Image.asset('images/trucktypeicon.png', height: 35, width: 35,),
                                        ),
                                        ListTile(
                                          title: const Text('Agent/ Broker'),
                                          leading: Radio<Service>(
                                            value: Service.agent,
                                            groupValue: _character,
                                            onChanged: (Service? value) {
                                              setState(() {
                                                _character = value;
                                              });
                                            },
                                          ),
                                          trailing: Image.asset('images/trucktypeicon.png', height: 35, width: 35,),
                                        ),
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
                                  child: RoundedButton(colour: Color.fromRGBO(223, 137, 0, 1.0), title: 'NEXT', onPressed:() async {
                                    // EasyLoading.show(status: 'Loading...');
                                    Navigator.pushNamed(context, AddLoading.id);
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
