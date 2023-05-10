import 'package:flutter/material.dart';


class ServiceProviderDetails extends StatefulWidget {
  // const ServiceProviderDetails({Key? key}) : super(key: key);
 static String id = 'ServiceProviderDetails';

  @override
  State<ServiceProviderDetails> createState() => _ServiceProviderDetailsState();
}

class _ServiceProviderDetailsState extends State<ServiceProviderDetails> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
       },
        child: Scaffold(),
        );
  }
}
