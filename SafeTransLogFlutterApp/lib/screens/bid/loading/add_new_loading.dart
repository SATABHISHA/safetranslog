import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/bid/company_details.dart';
import 'package:safetranslog/screens/bid/loading/add_loading.dart';
import 'package:safetranslog/screens/bid/loading/payment/payment_details.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';
import 'package:safetranslog/widgets/reusable_common_widgets/navigation_drawer_list.dart';

enum VehicleType {LCV, TRUCK, HYVA, CONTAINER, TRALLER, TANKAR}
class AddNewLoading extends StatefulWidget {
  // const AddNewLoading({Key? key}) : super(key: key);
  static String id = 'AddNewLoading';

  @override
  State<AddNewLoading> createState() => _AddNewLoadingState();
}
class _AddNewLoadingState extends State<AddNewLoading> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isDrawerOpen = false;
  VehicleType? _character = VehicleType.LCV;
  late final _tabController = TabController(length: 4, vsync: this);
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
             /* gradient: LinearGradient(
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
                /*Center(child: Text('Add New Loading', style: TextStyle(
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
                        child: Text('Add New Loading', style: TextStyle(
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
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20,),
                                  Center(child: Image(image: AssetImage('images/loadpic.png'), height: 112, width: 318,)),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(2, 20, 2, 0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Color.fromRGBO(251, 237, 187, 1.0)),
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    flex: 1,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        AutoSizeText('Pick Up Location', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17,),minFontSize: 15,),
                                                        SizedBox(height: 15,),
                                                        Padding(
                                                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                          child: AutoSizeText('${CompanyDetails.companyName}', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14,),minFontSize: 12,),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                          child: AutoSizeText('${AddLoading.pickupLocation}', style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 10,),minFontSize: 8,),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(width: 15,),
                                                  Flexible(
                                                    flex: 1,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      /*mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,*/
                                                      children: [
                                                        AutoSizeText('Drop Location', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17), minFontSize: 15,),
                                                        SizedBox(height: 15,),
                                                        Padding(
                                                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                          child: AutoSizeText('Delhi Goods Transport', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14,),minFontSize: 12,),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                          child: AutoSizeText('${AddLoading.dropLocation}', style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 10,),minFontSize: 8,),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ]
                                            ),
                                            SizedBox(height: 20,),
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Color.fromRGBO(251, 131, 43, 1.0)),
                                                  child: Padding(
                                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Flexible(flex: 1, child: AutoSizeText('Type of Material : ${AddLoading.materialType}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14,),minFontSize: 12, wrapWords: true,)),
                                                        SizedBox(width: 20,),
                                                        Flexible(flex: 1, child: AutoSizeText('Weight : ${AddLoading.weight}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14,),minFontSize: 12, wrapWords: true,)),
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
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: AutoSizeText('Choose Vehicle', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19,),minFontSize: 17,),
                                  ),
                                  SizedBox(height: 15,),
                                  //---Radio buttons(Choose Vehicle type), code starts
                                  ListTile(
                                    title: const Text('LCV'),
                                    leading: Radio<VehicleType>(
                                      value: VehicleType.LCV,
                                      groupValue: _character,
                                      onChanged: (VehicleType? value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    trailing: Image.asset('images/trucktypeicon.png', height: 35, width: 35,),
                                    tileColor: Colors.blueAccent,
                                  ),
                                  ListTile(
                                    title: const Text('TRUCK'),
                                    leading: Radio<VehicleType>(
                                      value: VehicleType.TRUCK,
                                      groupValue: _character,
                                      onChanged: (VehicleType? value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    trailing: Image.asset('images/trucktypeicon.png', height: 35, width: 35,),
                                  ),
                                  ListTile(
                                    title: const Text('HYVA'),
                                    leading: Radio<VehicleType>(
                                      value: VehicleType.HYVA,
                                      groupValue: _character,
                                      onChanged: (VehicleType? value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    trailing: Image.asset('images/trucktypeicon.png', height: 35, width: 35,),
                                  ),
                                  ListTile(
                                    title: const Text('CONTAINER'),
                                    leading: Radio<VehicleType>(
                                      value: VehicleType.CONTAINER,
                                      groupValue: _character,
                                      onChanged: (VehicleType? value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    trailing: Image.asset('images/trucktypeicon.png', height: 35, width: 35,),
                                  ),
                                  ListTile(
                                    title: const Text('TRALLER'),
                                    leading: Radio<VehicleType>(
                                      value: VehicleType.TRALLER,
                                      groupValue: _character,
                                      onChanged: (VehicleType? value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    trailing: Image.asset('images/trucktypeicon.png', height: 35, width: 35,),
                                  ),
                                  ListTile(
                                    title: const Text('TANKAR'),
                                    leading: Radio<VehicleType>(
                                      value: VehicleType.TANKAR,
                                      groupValue: _character,
                                      onChanged: (VehicleType? value) {
                                        setState(() {
                                          _character = value;
                                        });
                                      },
                                    ),
                                    trailing: Image.asset('images/trucktypeicon.png', height: 35, width: 35,),
                                  ),
                                  //---Radio buttons(Choose Vehicle type), code ends
                                  SizedBox(height: 15,),

                                  Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: AutoSizeText('Choose Type', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19,),minFontSize: 17,),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: Container(
                                      color: Color.fromRGBO(247, 236, 188, 1.0),
                                      child: TabBar(
                                        controller: _tabController,
                                        labelColor: Colors.black,
                                        indicatorColor: Color.fromRGBO(255, 152, 7, 1.0),
                                        isScrollable: true,
                                        onTap: (value) {
                                          print('val-=> ${value.toString()}');
                                        },
                                        tabs: const <Widget>[
                                          Tab(
                                            text: '10 Tyres',
                                          ),
                                          Tab(
                                            text: '12 Tyres',
                                          ),
                                          Tab(
                                            text: '16 Tyres',
                                          ),
                                          Tab(
                                            text: '18 Tyres',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ]
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
                                child: RoundedButton(colour: Color.fromRGBO(
                                    244, 80, 49, 1.0), title: 'CONTINUE', onPressed:() async {
                                  // EasyLoading.show(status: 'Loading...');
                                  Navigator.pushNamed(context, AddPaymentDetails.id);
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
