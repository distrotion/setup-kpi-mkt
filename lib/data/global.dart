import 'package:flutter/material.dart';
import '../page/page0.dart';

String token = '';
String selectpage = '';
Widget CuPage = const Page0();
int CuPageLV = 0;

class USERDATA {
  static int UserLV = 0;
  static String NAME = '';
  static String ID = '';
}

class logindata {
  static bool isControl = false;
  static String userID = '';
  static String userPASS = '';
}

// String server = 'http://127.0.0.1:14000/';
String server = 'http://172.23.10.34:14000/';
