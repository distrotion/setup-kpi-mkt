import 'package:flutter/material.dart';

import '../../widget/common/ComInputText.dart';
import '../../widget/table/P2GROUPLEADTIMEtable.dart';
import 'P2GROUPLEADTIMEvar.dart';

class P2GROUPLEADTIMEmain extends StatefulWidget {
  const P2GROUPLEADTIMEmain({super.key});

  @override
  State<P2GROUPLEADTIMEmain> createState() => _P2GROUPLEADTIMEmainState();
}

class _P2GROUPLEADTIMEmainState extends State<P2GROUPLEADTIMEmain> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 56, right: 56, top: 34),
      child: Column(
        children: [
          Text("SETUP CUSTOMER GROUP"),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ComInputText(
              isSideIcon: true,
              height: 40,
              width: 400,
              isContr: P2GROUPLEADTIMEvar.iscontrol,
              fnContr: (input) {
                P2GROUPLEADTIMEvar.iscontrol = input;
              },
              sValue: P2GROUPLEADTIMEvar.SEARCH,
              returnfunc: (String s) {
                setState(() {
                  P2GROUPLEADTIMEvar.SEARCH = s;
                });
              },
            ),
          ),
          P2GROUPLEADTIMEtable(),
          P2GROUPLEADTIMEtableitem(),
        ],
      ),
    );
  }
}
