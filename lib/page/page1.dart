import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/01-01-P1SETUPCUSGROUPGET.dart';
import 'P1SETUPCUSGROUP/P1SETUPCUSGROUPmain.dart';

//---------------------------------------------------------

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page1BlocTableBody();
  }
}

class Page1BlocTableBody extends StatelessWidget {
  const Page1BlocTableBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P1SETUPCUSGROUPGET__Bloc(),
        child: BlocBuilder<P1SETUPCUSGROUPGET__Bloc,
            List<P1SETUPCUSGROUPGETclass>>(
          builder: (context, data) {
            return Page1Body(
              data: data,
            );
          },
        ));
  }
}

class Page1Body extends StatelessWidget {
  Page1Body({
    Key? key,
    this.data,
  }) : super(key: key);
  List<P1SETUPCUSGROUPGETclass>? data;
  @override
  Widget build(BuildContext context) {
    return P1SETUPCUSGROUPmain(
      data: data,
    );
  }
}
