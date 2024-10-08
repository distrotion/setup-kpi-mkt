import 'package:flutter/material.dart';

import 'tablebox.dart';

class P1SETUPCUSGROUPtable extends StatelessWidget {
  const P1SETUPCUSGROUPtable({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: rowbox_type0_nc(
            Head: "CUSTFULL",
            Colorss: Color(0xff0057F1),
            Colorst: Colors.white,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: "CUSTSHOT",
            Colorss: Color(0xff0057F1),
            Colorst: Colors.white,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: "GROUP TS",
            Colorss: Color(0xff0057F1),
            Colorst: Colors.white,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: "TYPE",
            Colorss: Color(0xff0057F1),
            Colorst: Colors.white,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: "GROUP",
            Colorss: Color(0xff0057F1),
            Colorst: Colors.white,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: "MKT GROUP",
            Colorss: Color(0xff0057F1),
            Colorst: Colors.white,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: "FREQ",
            Colorss: Color(0xff0057F1),
            Colorst: Colors.white,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: "R_ITEM",
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

class P1SETUPCUSGROUPtableitem extends StatelessWidget {
  P1SETUPCUSGROUPtableitem({
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
          flex: 6,
          child: rowbox_type0_nc(
            Head: text01,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: text02,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: text05,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: text03,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: text04,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: text06,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: text07,
          ),
        ),
        Expanded(
          flex: 2,
          child: rowbox_type0(
            Head: text08,
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
