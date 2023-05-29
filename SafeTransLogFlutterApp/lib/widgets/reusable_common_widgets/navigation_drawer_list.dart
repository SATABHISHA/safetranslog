import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:safetranslog/screens/gps/gps1.dart';


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
             height: 80,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(child: Image.asset("images/safetranslogappbarlogo.png", width: 164, height: 48,)),
          ),
          ListTile(
            title: const Text('Place Your Bid'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('KYC'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Add Truck'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Driver'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Wallet'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Add Bank'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Enquiry'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Disel Card'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('FasTag'),
            onTap: () {

              Navigator.pop(context);
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

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Vehicle Current Location'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Nearby Vehicle'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('State Wise Price List'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('City Wise Price List'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Pump Wise Price List'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
