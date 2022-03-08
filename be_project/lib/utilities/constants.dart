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
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
