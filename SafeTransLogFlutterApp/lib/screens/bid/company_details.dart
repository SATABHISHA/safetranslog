import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CompanyDetails extends StatefulWidget {
  // const CompanyDetails({Key? key}) : super(key: key);
  static String id = "CompanyDetails";

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
       child: Scaffold(
        body: Container(
          // color: Colors.lightGreenAccent,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  // Color.fromRGBO(2, 72, 254, 1.0),
                  Colors.blue,
                  Colors.yellow,
                  Colors.redAccent,

                ],
              )
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max ,
              children: [
                Center(child: Text('About Company', style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),)),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(215, 227, 105, 1.0),
                        blurRadius: 15.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ],
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.white,
                        Colors.lightGreenAccent,
                      ],
                    ),
                ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Center(
                            child: CircleAvatar(backgroundColor: Colors.blueAccent, radius: 30,
                              child: CircleAvatar(backgroundColor: Colors.blueAccent, radius: 25, backgroundImage: AssetImage('images/companyprofilepic.png'),),

                              ),
                          ),
                          AutoSizeText(
                            'Enter your Company Details ',
                            style: TextStyle(color: Color.fromRGBO(
                                37, 37, 37, 1.0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            wrapWords: true,
                            minFontSize: 8,
                            maxFontSize: 20,
                            maxLines: 2,
                            textAlign: TextAlign.center,),

                        ],
                      )
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
