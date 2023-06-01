import 'package:flutter/material.dart';


class CustomSnackBar {

  static void showToast(BuildContext context,  {required var title}) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text('${title}'),
        action: SnackBarAction(label: 'OK', onPressed: (){
          scaffold.hideCurrentSnackBar;
          /*if(ServiceProviderDetails.isLoad == false){
            Navigator.pushNamed(context, LoadListing.id);
          }*/

        }),
      ),
    );
  }


}


