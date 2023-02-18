import 'package:flutter/material.dart';

TextStyle kExpenceStyle({required bool status}) {
  return TextStyle(
    color: status ? Colors.redAccent : Colors.green,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
}

const kExpenceAmountStyle = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

const kExpenceCategoryStyle = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

const kExpenceDateStyle = TextStyle(
  color: Colors.grey,
  fontSize: 12,
  // fontWeight: FontWeight.w400,
);

const kTitleStyle = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

const kBudgetTitleStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16);
const Color kPrimaryColor = Color(0xFF2A31A4);
const Color kSecondaryColor = Color(0xFF3845c8);

const Color kLightGrayColor = Color(0xFFf4f4fa);
