import 'package:flutter/material.dart';
import 'package:safetranslog/screens/bank/add_bank.dart';
import 'package:safetranslog/screens/bid/company_details.dart';
import 'package:safetranslog/screens/bid/loading/add_loading.dart';
import 'package:safetranslog/screens/bid/loading/bid_confirmation.dart';
import 'package:safetranslog/screens/bid/loading/load_listing.dart';
import 'package:safetranslog/screens/bid/loading/payment/payment_details.dart';
import 'package:safetranslog/screens/bid/place_bid.dart';
import 'package:safetranslog/screens/bid/service_provider_details.dart';
import 'package:safetranslog/screens/driver/driver_list.dart';
import 'package:safetranslog/screens/kyc/kyc_name.dart';
import 'package:safetranslog/screens/login/login_user.dart';
import 'package:safetranslog/screens/login/verify_user_mobile.dart';
import 'package:safetranslog/screens/splash_screen.dart';
import 'package:safetranslog/screens/truck/add_truck.dart';
import 'package:safetranslog/screens/wallet/wallet_home.dart';

import 'screens/bid/loading/add_new_loading.dart';
import 'screens/kyc/kyc_address.dart';
import 'screens/kyc/kyc_docs.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id : (context)=> SplashScreen(),
        LoginUser.id : (context)=> LoginUser(),
        VerifyUserMobile.id : (context)=> VerifyUserMobile(),
        CompanyDetails.id: (context)=> CompanyDetails(),
        ServiceProviderDetails.id: (context)=> ServiceProviderDetails(),
        AddLoading.id: (context)=> AddLoading(),
        AddNewLoading.id: (context)=> AddNewLoading(),
        AddPaymentDetails.id: (context)=> AddPaymentDetails(),
        LoadListing.id: (context)=> LoadListing(),
        PlaceBid.id: (context)=> PlaceBid(),
        BidConfirmation.id: (context)=> BidConfirmation(),
        KycName.id: (context)=> KycName(),
        KycAddress.id: (context)=> KycAddress(),
        KycDocs.id: (context)=> KycDocs(),
        AddTruck.id: (context)=> AddTruck(),
        DriverList.id: (context)=> DriverList(),
        WalletHome.id: (context)=> WalletHome(),
        AddBank.id: (context)=> AddBank(),
      },
    );
  }
}


