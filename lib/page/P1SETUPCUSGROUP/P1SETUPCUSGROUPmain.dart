import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/01-01-P1SETUPCUSGROUPGET.dart';
import '../../widget/common/Advancedropdown.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/common/datetimeconv.dart';
import '../../widget/table/P1SETUPCUSGROUPtable.dart';
import 'P1SETUPCUSGROUPvar.dart';

late BuildContext P1SETUPCUSGROUPmaincontext;

class P1SETUPCUSGROUPmain extends StatefulWidget {
  P1SETUPCUSGROUPmain({
    super.key,
    this.data,
  });
  List<P1SETUPCUSGROUPGETclass>? data;
  @override
  State<P1SETUPCUSGROUPmain> createState() => _P1SETUPCUSGROUPmainState();
}

class _P1SETUPCUSGROUPmainState extends State<P1SETUPCUSGROUPmain> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print(DateTime.now().millisecondsSinceEpoch);
    print(readTimestamp("1727930538147"));
    context.read<P1SETUPCUSGROUPGET__Bloc>().add(P1SETUPCUSGROUPGET_GET());
  }

  @override
  Widget build(BuildContext context) {
    P1SETUPCUSGROUPmaincontext = context;
    List<P1SETUPCUSGROUPGETclass> _databrfor = widget.data ?? [];
    List<P1SETUPCUSGROUPGETclass> _data = [];
    for (int i = 0; i < _databrfor.length; i++) {
      if (_databrfor[i]
              .CustFull
              .toUpperCase()
              .contains(P1SETUPCUSGROUPvar.SEARCH.toUpperCase()) ||
          _databrfor[i]
              .CustShort
              .toUpperCase()
              .contains(P1SETUPCUSGROUPvar.SEARCH.toUpperCase()) ||
          _databrfor[i]
              .TYPE
              .toUpperCase()
              .contains(P1SETUPCUSGROUPvar.SEARCH.toUpperCase()) ||
          _databrfor[i]
              .GROUP
              .toUpperCase()
              .contains(P1SETUPCUSGROUPvar.SEARCH.toUpperCase()) ||
          _databrfor[i]
              .GroupNameTS
              .toUpperCase()
              .contains(P1SETUPCUSGROUPvar.SEARCH.toUpperCase())) {
        _data.add(_databrfor[i]);
      }
    }

    return Padding(
      padding: const EdgeInsets.only(left: 56, right: 56, top: 34),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("SETUP CUSTOMER GROUP"),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ComInputText(
                isSideIcon: true,
                height: 40,
                width: 400,
                isContr: P1SETUPCUSGROUPvar.iscontrol,
                fnContr: (input) {
                  P1SETUPCUSGROUPvar.iscontrol = input;
                },
                sValue: P1SETUPCUSGROUPvar.SEARCH,
                returnfunc: (String s) {
                  setState(() {
                    P1SETUPCUSGROUPvar.SEARCH = s;
                  });
                },
              ),
            ),
            P1SETUPCUSGROUPtable(),
            for (int i = 0; i < _data.length; i++) ...[
              P1SETUPCUSGROUPtableitem(
                text01: _data[i].CustFull,
                text02: _data[i].CustShort,
                text03: _data[i].TYPE,
                text04: _data[i].GROUP,
                text05: _data[i].GroupNameTS,
                text06: _data[i].MKTGROUP,
                text07: _data[i].FRE,
                text08: _data[i].REPORTITEMS,
                RETURNFN: (v) {
                  // print(_data[i].Id);
                  P1SETUPCUSGROUPvar.UID = _data[i].Id;
                  P1SETUPCUSGROUPvar.TYPE = _data[i].TYPE;
                  P1SETUPCUSGROUPvar.GROUP = _data[i].GROUP;
                  P1SETUPCUSGROUPvar.MKTGROUP = _data[i].MKTGROUP;
                  P1SETUPCUSGROUPvar.FRE = _data[i].FRE;
                  P1SETUPCUSGROUPvar.REPORTITEMS = _data[i].REPORTITEMS;
                  TEMPpop(context);
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}

void TEMPpop(BuildContext contextin) {
  showDialog(
    context: contextin,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        child: TempSelectWALLet(),
      );
    },
  );
}

class TempSelectWALLet extends StatefulWidget {
  const TempSelectWALLet({super.key});

  @override
  State<TempSelectWALLet> createState() => _TempSelectWALLetState();
}

class _TempSelectWALLetState extends State<TempSelectWALLet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 280,
        width: 300,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 80,
                width: 250,
                child: AdvanceDropDown(
                  sLabel: "Select TYPE",
                  imgpath: '',
                  listdropdown: const [
                    MapEntry("", ""),
                    MapEntry("A", "A"),
                    MapEntry("B", "B"),
                    MapEntry("C", "C"),
                    MapEntry("D", "D"),
                    MapEntry("F", "F"),
                    MapEntry("G", "G"),
                    MapEntry("H", "H"),
                    MapEntry("I", "I"),
                    MapEntry("J", "J"),
                    MapEntry("K", "K"),
                  ],
                  onChangeinside: (d, v) {
                    P1SETUPCUSGROUPvar.TYPE = d;
                  },
                  value: P1SETUPCUSGROUPvar.TYPE,
                  height: 40,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 80,
                width: 250,
                child: AdvanceDropDown(
                  sLabel: "Select GROUP",
                  imgpath: '',
                  listdropdown: const [
                    MapEntry("", ""),
                    MapEntry("KAC", "KAC"),
                    MapEntry("MEDIUM", "MEDIUM"),
                  ],
                  onChangeinside: (d, v) {
                    P1SETUPCUSGROUPvar.GROUP = d;
                  },
                  value: P1SETUPCUSGROUPvar.GROUP,
                  height: 40,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 80,
                width: 250,
                child: AdvanceDropDown(
                  sLabel: "MKT GROUP",
                  imgpath: '',
                  listdropdown: const [
                    MapEntry("", ""),
                    MapEntry("1", "1"),
                    MapEntry("2", "2"),
                    // MapEntry("3", "3"),
                    // MapEntry("4", "4"),
                    MapEntry("5", "5"),
                    MapEntry("6", "6"),
                    // MapEntry("7", "7"),
                    // MapEntry("8", "8"),
                  ],
                  onChangeinside: (d, v) {
                    P1SETUPCUSGROUPvar.MKTGROUP = d;
                  },
                  value: P1SETUPCUSGROUPvar.MKTGROUP,
                  height: 40,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 80,
                width: 250,
                child: AdvanceDropDown(
                  sLabel: "Freq.",
                  imgpath: '',
                  listdropdown: const [
                    MapEntry("", ""),
                    MapEntry("1<", "1<"),
                    MapEntry("1", "1"),
                    MapEntry("2", "2"),
                    MapEntry("3", "3"),
                    MapEntry("4", "4"),
                  ],
                  onChangeinside: (d, v) {
                    P1SETUPCUSGROUPvar.FRE = d;
                  },
                  value: P1SETUPCUSGROUPvar.FRE,
                  height: 40,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 80,
                width: 250,
                child: ComInputText(
                  isNumberOnly: true,
                  sLabel: "Report Items",
                  height: 40,
                  isContr: P1SETUPCUSGROUPvar.iscontrol,
                  fnContr: (input) {
                    setState(() {
                      P1SETUPCUSGROUPvar.iscontrol = input;
                    });
                  },
                  sValue: P1SETUPCUSGROUPvar.REPORTITEMS,
                  returnfunc: (String s) {
                    P1SETUPCUSGROUPvar.REPORTITEMS = s;
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                  //
                  P1SETUPCUSGROUPmaincontext.read<P1SETUPCUSGROUPGET__Bloc>()
                      .add(P1SETUPCUSGROUPGET_SET());
                },
                child: Container(
                  height: 50,
                  width: 250,
                  color: Colors.blue,
                  child: Center(
                    child: Text("SAVE"),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
