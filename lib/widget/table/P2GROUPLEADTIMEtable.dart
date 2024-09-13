import 'package:flutter/material.dart';

import 'tablebox.dart';

class P2GROUPLEADTIMEtable extends StatelessWidget {
  const P2GROUPLEADTIMEtable({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: rowbox_type0_nc(
            Head: "TYPE",
            Colorss: Color(0xff0057F1),
            Colorst: Colors.white,
          ),
        ),
        Expanded(
          flex: 3,
          child: rowbox_type0(
            Head: "LEAD TIME",
            Colorss: Color(0xff0057F1),
            Colorst: Colors.white,
          ),
        ),
        Expanded(
          flex: 1,
          child: rowbox_type0(
            Head: "EDIT",
            Colorss: Color(0xff0057F1),
            Colorst: Colors.white,
          ),
        ),
      ],
    );
  }
}

class P2GROUPLEADTIMEtableitem extends StatelessWidget {
  P2GROUPLEADTIMEtableitem({
    super.key,
    this.text01,
    this.text02,
    this.text03,
    this.text04,
    this.text05,
    this.text06,
    this.text07,
    this.text08,
    this.text09,
    this.RETURNFN,
  });

  String? text01;
  String? text02;
  String? text03;
  String? text04;
  String? text05;
  String? text06;
  String? text07;
  String? text08;
  String? text09;
  Function(String)? RETURNFN;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: rowbox_type0_nc(
            Head: text01,
          ),
        ),
        Expanded(
          flex: 3,
          child: rowbox_type0(
            Head: text02,
          ),
        ),
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              if (RETURNFN != null) {
                RETURNFN!(text03!);
              }
            },
            child: rowbox_type1(),
          ),
        ),
      ],
    );
  }
}
