import 'package:flutter/material.dart';

Widget showInnerText(context,double totalCount,String innerTitle){
  return SizedBox(
    width: MediaQuery.of(context).size.width / 3.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$totalCount",
          style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18.0),
        ),
        Text(
          innerTitle,
          style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 14.0),
        ),
      ],
    ),
  );
}