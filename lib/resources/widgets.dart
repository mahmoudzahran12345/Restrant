
import 'package:flutter/material.dart';

void navigatto(context,widget)=>Navigator.push(context,
  MaterialPageRoute(builder:
      (context)=>widget
  ),);
void navigatandfinsh(context,widget)=>Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder:
        (context)=>widget
    ),
        (Route<dynamic> route)=>false
);