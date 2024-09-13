import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../page/P1SETUPCUSGROUP/P1SETUPCUSGROUPmain.dart';
import '../../page/P1SETUPCUSGROUP/P1SETUPCUSGROUPvar.dart';

//-------------------------------------------------

abstract class Example_Event {}

class P1SETUPCUSGROUPGET_GET extends Example_Event {}

class P1SETUPCUSGROUPGET_SET extends Example_Event {}

class P1SETUPCUSGROUPGET_FLUSH extends Example_Event {}

class P1SETUPCUSGROUPGET__Bloc
    extends Bloc<Example_Event, List<P1SETUPCUSGROUPGETclass>> {
  P1SETUPCUSGROUPGET__Bloc() : super([]) {
    on<P1SETUPCUSGROUPGET_GET>((event, emit) {
      return _P1SETUPCUSGROUPGET_GET([], emit);
    });

    on<P1SETUPCUSGROUPGET_SET>((event, emit) {
      return _P1SETUPCUSGROUPGET_SET([], emit);
    });
    on<P1SETUPCUSGROUPGET_FLUSH>((event, emit) {
      return _P1SETUPCUSGROUPGET_FLUSH([], emit);
    });
  }
  Future<void> _P1SETUPCUSGROUPGET_GET(List<P1SETUPCUSGROUPGETclass> toAdd,
      Emitter<List<P1SETUPCUSGROUPGETclass>> emit) async {
    List<P1SETUPCUSGROUPGETclass> output = [];
    final response = await Dio().post(
      server + 'MKTKPI/getdata',
      data: {},
    );

    if (response.statusCode == 200) {
      var databuff = response.data;
      // print(databuff);
      if (databuff.length > 0) {
        //
        for (var i = 0; i < databuff.length; i++) {
          //
          output.add(P1SETUPCUSGROUPGETclass(
            Id: safenull(databuff[i]['Id']),
            CustId: safenull(databuff[i]['CustId']),
            CustFull: safenull(databuff[i]['CustFull']),
            CustShort: safenull(databuff[i]['CustShort']),
            TYPE: safenull(databuff[i]['TYPE']),
            GROUP: safenull(databuff[i]['GROUP']),
          ));
        }
      }
    } else {
      //
    }
    emit(output);
  }

  Future<void> _P1SETUPCUSGROUPGET_SET(List<P1SETUPCUSGROUPGETclass> toAdd,
      Emitter<List<P1SETUPCUSGROUPGETclass>> emit) async {
    List<P1SETUPCUSGROUPGETclass> output = [];
    final response = await Dio().post(
      server + 'MKTKPI/UPDATETYPEGROUP',
      data: {
        "Id": P1SETUPCUSGROUPvar.UID,
        "TYPE": P1SETUPCUSGROUPvar.TYPE,
        "GROUP": P1SETUPCUSGROUPvar.GROUP,
      },
    );

    P1SETUPCUSGROUPmaincontext.read<P1SETUPCUSGROUPGET__Bloc>()
        .add(P1SETUPCUSGROUPGET_GET());

    emit(output);
  }

  Future<void> _P1SETUPCUSGROUPGET_FLUSH(List<P1SETUPCUSGROUPGETclass> toAdd,
      Emitter<List<P1SETUPCUSGROUPGETclass>> emit) async {
    List<P1SETUPCUSGROUPGETclass> output = [];
    emit(output);
  }
}

class P1SETUPCUSGROUPGETclass {
  P1SETUPCUSGROUPGETclass({
    this.Id = '',
    this.CustId = '',
    this.CustFull = '',
    this.CustShort = '',
    this.TYPE = '',
    this.GROUP = '',
  });

  String Id;
  String CustId;
  String CustFull;
  String CustShort;
  String TYPE;
  String GROUP;
}

String safenull(var input) {
  String output = '';
  if (input != null) {
    output = input.toString();
  }
  return output;
}
