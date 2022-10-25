import 'package:flutter/material.dart';

class AppConstant {
  
static push(BuildContext context,Widget page){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>page));
}

static pushOf(BuildContext context,Widget page){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>page));
}

}