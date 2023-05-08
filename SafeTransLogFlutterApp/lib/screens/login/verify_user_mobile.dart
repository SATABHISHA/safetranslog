

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:pinput/pinput.dart';
import 'package:safetranslog/screens/bid/company_details.dart';
import 'package:safetranslog/screens/login/rounded_button.dart';

class VerifyUserMobile extends StatefulWidget {
  // const VerifyUserMobile({Key? key}) : super(key: key);
  static String id = "VerifyUserMobile";

  @override
  State<VerifyUserMobile> createState() => _VerifyUserMobileState();
}

class _VerifyUserMobileState extends State<VerifyUserMobile> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        // backgroundColor: Color.fromRGBO(2, 72, 254, 1.0),

        /*appBar: AppBar(
          // backgroundColor: Color.fromRGBO(71, 71, 71, 1.0),
          backgroundColor: Color.fromRGBO(2, 72, 254, 1.0),
          centerTitle: false,
          automaticallyImplyLeading: false,
          actions: [
            Builder(
                builder: (context) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Text('Hello ${EmployeeLogin.employeeJsonData['employee']['employee_full_name']} (${EmployeeLogin.employeeJsonData['user']['user_name']})', style: TextStyle(fontSize: 14, color: Colors.white),),
                        // MediaQuery.of(context).size.width > 950 ? Text('Hello nnnd nfnnfnnf fnnfnfnfnf', style: TextStyle(fontSize: 14, color: Colors.white),) : SizedBox(),

                        SizedBox(width: 10,),

                      ],
                    ),
                  );
                }
            ),
          ],

        ),*/
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
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(child: Text('Verification', style: TextStyle(
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
                            )
                        ),
                        child: Stack(
                          children: [
                            Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Image.asset("images/verification.png", width: 288,
                                  height: 225,),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                child: AutoSizeText(
                                  'Enter the verification code we have just \nsent you on your Mobile No. ',
                                  style: TextStyle(color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  wrapWords: true,
                                  minFontSize: 8,
                                  maxFontSize: 20,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,),
                              ),

                             SizedBox(height: 20,),
                             FractionallySizedBox(widthFactor: 1, child: PinputExample()),
                             SizedBox(height: 20,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                child: Row(
                                  children: [
                                    AutoSizeText(
                                      'Didn\'t received a code! ',
                                      style: TextStyle(color: Color.fromRGBO(77, 76, 76, 1.0),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      wrapWords: true,
                                      minFontSize: 8,
                                      maxFontSize: 20,
                                      maxLines: 2,
                                      textAlign: TextAlign.center,),
                                    AutoSizeText(
                                      'Resend',
                                      style: TextStyle(color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      wrapWords: true,
                                      minFontSize: 8,
                                      maxFontSize: 20,
                                      maxLines: 2,
                                      textAlign: TextAlign.center,),
                                  ],
                                ),
                              )
                            ],
                          ),
                            //----button code starts
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: double.infinity,
                                height: 85,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: RoundedButton(colour: Color.fromRGBO(223, 137, 0, 1.0), title: 'VERIFY', onPressed:() async {
                                    // EasyLoading.show(status: 'Loading...');
                                    Navigator.pushNamed(context, CompanyDetails.id);
                                  }
                                  ),
                                ),
                              ),
                            ),
                            //----button code ends
                          ]
                        ),
                      ),
                    ),
                  )
                ]
            ),
          ),
        ),
      ),
    );
  }
}

  class PinputExample extends StatefulWidget {
  const PinputExample({Key? key}) : super(key: key);

  @override
  State<PinputExample> createState() => _PinputExampleState();
  }

  class _PinputExampleState extends State<PinputExample> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
  pinController.dispose();
  focusNode.dispose();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
  const fillColor = Color.fromRGBO(243, 246, 249, 0);
  const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

  final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: const TextStyle(
  fontSize: 22,
  color: Color.fromRGBO(30, 60, 87, 1),
  ),
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(19),
  border: Border.all(color: borderColor),
  ),
  );

  // return TextField(
  //   contextMenuBuilder: (_, EditableTextState editableTextState) {
  //     print('HEHE');
  //     return AdaptiveTextSelectionToolbar(
  //       anchors: editableTextState.contextMenuAnchors,
  //       children: editableTextState.contextMenuButtonItems.map((ContextMenuButtonItem buttonItem) {
  //         return CupertinoButton(
  //           borderRadius: null,
  //           color: const Color(0xffaaaa00),
  //           disabledColor: const Color(0xffaaaaff),
  //           onPressed: buttonItem.onPressed,
  //           padding: const EdgeInsets.all(10.0),
  //           pressedOpacity: 0.7,
  //           child: SizedBox(
  //             width: 200.0,
  //             child: Text(
  //               CupertinoTextSelectionToolbarButton.getButtonLabel(context, buttonItem),
  //             ),
  //           ),
  //         );
  //       }).toList(),
  //     );
  //   },
  // );

  /// Optionally you can use form to validate the Pinput
  return Form(
  key: formKey,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Directionality(
  // Specify direction if desired
  textDirection: TextDirection.ltr,
  child: Pinput(
  controller: pinController,
  focusNode: focusNode,
  androidSmsAutofillMethod:
  AndroidSmsAutofillMethod.smsUserConsentApi,
  listenForMultipleSmsOnAndroid: true,
  defaultPinTheme: defaultPinTheme,
  /*validator: (value) {
  return value == '2222' ? null : 'Pin is incorrect';
  },*/
  // onClipboardFound: (value) {
  //   debugPrint('onClipboardFound: $value');
  //   pinController.setText(value);
  // },
  hapticFeedbackType: HapticFeedbackType.lightImpact,
  onCompleted: (pin) {
  debugPrint('onCompleted: $pin');
  },
  onChanged: (value) {
  debugPrint('onChanged: $value');
  },
  cursor: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
  Container(
  margin: const EdgeInsets.only(bottom: 9),
  width: 22,
  height: 1,
  color: focusedBorderColor,
  ),
  ],
  ),
  focusedPinTheme: defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration!.copyWith(
  borderRadius: BorderRadius.circular(8),
  border: Border.all(color: focusedBorderColor),
  ),
  ),
  submittedPinTheme: defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration!.copyWith(
  color: fillColor,
  borderRadius: BorderRadius.circular(19),
  border: Border.all(color: focusedBorderColor),
  ),
  ),
  errorPinTheme: defaultPinTheme.copyBorderWith(
  border: Border.all(color: Colors.redAccent),
  ),
  ),
  ),
  ],
  ),
  );
  }
}
