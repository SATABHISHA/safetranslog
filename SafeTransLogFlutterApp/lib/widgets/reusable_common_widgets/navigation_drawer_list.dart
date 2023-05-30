import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/bank/add_bank.dart';
import 'package:safetranslog/screens/bid/company_details.dart';
import 'package:safetranslog/screens/diselcard/diselcard_home.dart';
import 'package:safetranslog/screens/driver/driver_list.dart';
import 'package:safetranslog/screens/enquiry/enquiry_bank.dart';
import 'package:safetranslog/screens/fastag/fastag_home.dart';
import 'package:safetranslog/screens/gps/gps1.dart';
import 'package:safetranslog/screens/gps/gps2.dart';
import 'package:safetranslog/screens/kyc/kyc_name.dart';
import 'package:safetranslog/screens/petrolprice/city_price_list.dart';
import 'package:safetranslog/screens/petrolprice/pump_price_list.dart';
import 'package:safetranslog/screens/petrolprice/state_price_list.dart';
import 'package:safetranslog/screens/truck/add_truck.dart';
import 'package:safetranslog/screens/vehicle/nearbyvehicle.dart';
import 'package:safetranslog/screens/vehicle/vehicle_current_location.dart';
import 'package:safetranslog/screens/wallet/wallet_home.dart';


class NavigationDrawerList extends StatefulWidget {
  // const NavigationDrawerList({super.key,});
  final DrawerCallback callback;
  NavigationDrawerList({required this.callback});

  @override
  State<NavigationDrawerList> createState() => _NavigationDrawerListState();
}

class _NavigationDrawerListState extends State<NavigationDrawerList> {
  void initState() {
    if (widget.callback != null) {
      widget.callback(true);
    }

    super.initState();
  }

  @override
  void dispose() {
    if (widget.callback != null) {
      widget.callback(false);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
           Container(
             height: 130,
            decoration: BoxDecoration(
              color: Color.fromRGBO(2, 72, 254, 1.0),
            ),
            child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: MaterialButton(
                        onPressed: (){Navigator.pop(context);print('Clicked');},
                        child: Container(
                          width: 60,
                          height: 60,
                          child: Icon(Icons.close, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                    child: Center(child: Image.asset("images/safetranslogappbarlogo.png", width: 164, height: 64,)),
                  )
            ]),
          ),
          ListTile(
            title: const Text('Place Your Bid'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              // Navigator.pop(context);

              Navigator.pushNamed(context, CompanyDetails.id);
            },
          ),
          ListTile(
            title: const Text('KYC'),
            onTap: () {

              // Navigator.pop(context);

              Navigator.pushNamed(context, KycName.id);
            },
          ),
          ListTile(
            title: const Text('Add Truck'),
            onTap: () {

              // Navigator.pop(context);

              Navigator.pushNamed(context, AddTruck.id);
            },
          ),
          ListTile(
            title: const Text('Driver'),
            onTap: () {

              // Navigator.pop(context);
              Navigator.pushNamed(context, DriverList.id);
            },
          ),
          ListTile(
            title: const Text('Wallet'),
            onTap: () {


              Navigator.pushNamed(context, WalletHome.id);
            },
          ),
          ListTile(
            title: const Text('Add Bank'),
            onTap: () {

              Navigator.pushNamed(context, AddBank.id);
            },
          ),
          ListTile(
            title: const Text('Enquiry'),
            onTap: () {

              // Navigator.pop(context);
              Navigator.pushNamed(context, EnquiryBank.id);
            },
          ),
          ListTile(
            title: const Text('Disel Card'),
            onTap: () {

              // Navigator.pop(context);
              Navigator.pushNamed(context, DiselCardHome.id);
            },
          ),
          ListTile(
            title: const Text('FasTag'),
            onTap: () {

              // Navigator.pop(context);
              Navigator.pushNamed(context, FasTagHome.id);
            },
          ),
          ListTile(
            title: const Text('GPS 1'),
            onTap: () {

              // Navigator.pop(context);
              Navigator.pushNamed(context, Gps1.id);
            },
          ),
          ListTile(
            title: const Text('GPS 2'),
            onTap: () {

              // Navigator.pop(context);
              Navigator.pushNamed(context, Gps2.id);
            },
          ),
          ListTile(
            title: const Text('Vehicle Current Location'),
            onTap: () {

              // Navigator.pop(context);
              Navigator.pushNamed(context, VehicleCurrentLocation.id);

            },
          ),
          ListTile(
            title: const Text('Nearby Vehicle'),
            onTap: () {

              // Navigator.pop(context);

              Navigator.pushNamed(context, NearbyVehicle.id);
            },
          ),
          ListTile(
            title: const Text('State Wise Price List'),
            onTap: () {

              // Navigator.pop(context);
              Navigator.pushNamed(context, StatePriceList.id);
            },
          ),
          /*ListTile(
            title: const Text('City Wise Price List'),
            onTap: () {

              // Navigator.pop(context);

              Navigator.pushNamed(context, CityPriceList.id);
            },
          ),*/
          ListTile(
            title: const Text('Pump Wise Price List'),
            onTap: () {

              // Navigator.pop(context);

              Navigator.pushNamed(context, PumpPriceList.id);
            },
          ),
        ],
      ),
    );
  }
}
