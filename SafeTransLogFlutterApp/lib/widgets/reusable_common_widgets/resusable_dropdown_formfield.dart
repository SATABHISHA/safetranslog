


import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class ReusabeleDropDownButtonFormField extends StatelessWidget {
  /* const ReusabeleDropDownButtonFormField({
    Key? key,
  }) : super(key: key);*/
  List<DropdownMenuItem<String>> list;
  void Function(String?)? onChanged;
  void Function(String?)? onSaved;
  var dropDownCustomDecorationPersonalDataMgnt;
  var hintName;
  GlobalKey<FormFieldState> key;
  // = new GlobalKey<FormFieldState>();
  ReusabeleDropDownButtonFormField({required this.list, required this.onChanged, required this.dropDownCustomDecorationPersonalDataMgnt, required this.key, required this.onSaved, required this.hintName});
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      // key: key,
      decoration: dropDownCustomDecorationPersonalDataMgnt,
      isExpanded: true,
      hint: Text(
        hintName,
        style: TextStyle(fontSize: 14),
      ),
      icon:  Container(
        // transform: Matrix4.translationValues(0.0,1.0,0.0),
        height: 30,
        width: 43,
        // color: Colors.blueAccent,
        child: Image.asset('images/arrowdn.png'),
      ),
      iconSize: 30,
      buttonHeight: 50,
      buttonPadding: const EdgeInsets.only(left: 10, right: 0),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      items: list,
      // value: functionListSelectedValue,
      validator: (value) {
        if (value == null) {
          return 'Please select item.';
        }
      },
      onChanged: onChanged,
      onSaved: onSaved,
    );
  }
}