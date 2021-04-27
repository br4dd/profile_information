import 'package:flutter/material.dart';

class BoxDecorator {
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: Colors.blue,
        width: 3,
      ),
    );
  }
}
