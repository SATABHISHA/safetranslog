import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
    hintText: 'Search Skill(s)',
    hintStyle: TextStyle(color: Colors.grey, fontFamily: 'Gilroy'),
    filled: true,
    isDense: true,
    // contentPadding: const EdgeInsets.fromLTRB(-10, 20, 10, 0),
    // contentPadding: const EdgeInsetsDirectional.only(start: -50.0),
    contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(214, 213, 213, 1.0), width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(214, 213, 213, 1.0), width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    )
);

//----added on 27th Oct for mfa login, code starts
const kTextFieldDecorationForMFA = InputDecoration(
    hintText: 'Search Skill(s)',
    hintStyle: TextStyle(color: Colors.grey, fontFamily: 'Gilroy'),
    filled: true,
    // filled: true,
    // isDense: true,
    // contentPadding: const EdgeInsets.fromLTRB(-10, 20, 10, 0),
    // contentPadding: const EdgeInsetsDirectional.only(start: -50.0),
    // contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
    contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
        borderSide: BorderSide(color: Color.fromRGBO(221, 218, 218, 1.0), width: 1)
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(221, 218, 218, 1.0), width: 1),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(221, 218, 218, 1.0), width: 1),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    )
);
//----added on 27th Oct for mfa login, code ends

const dropDownCustomDecorationPersonalDataMgntWeb = InputDecoration(
  fillColor: Colors.white,
  //Add isDense true and zero Padding.
  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
  isDense: true,
  contentPadding: EdgeInsets.zero,
  border:OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: Color.fromRGBO(203, 203, 203, 1.0), width: 1.0)
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(203, 203, 203, 1.0), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(203, 203, 203, 1.0), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  //Add more decoration as you want here
  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
);