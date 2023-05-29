import 'package:flutter/material.dart';


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
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
