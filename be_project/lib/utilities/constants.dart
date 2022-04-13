import 'package:flutter/material.dart';

const kButtonTextStyle = TextStyle(
  fontSize: 25.0,
);
const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Color(0xFFF2EDE6),
  icon: Icon(
    Icons.food_bank_outlined,
    size: 50.0,
    color: Color(0xFF0ABAB5),
  ),
  hintText: 'Enter Ingredient Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black87, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
);

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a Value',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.5),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
