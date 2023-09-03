import 'package:flutter/material.dart';

SearchAppBarComponent() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Weather",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 28,
        ),
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.location_on_rounded,
          color: Colors.black,
        ),
      )
    ],
  );
}
