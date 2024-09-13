import 'package:flutter/material.dart';

class rowbox_type0 extends StatelessWidget {
  rowbox_type0({
    Key? key,
    this.Head,
    this.Colorss,
    this.Colorst,
  }) : super(key: key);
  String? Head;
  Color? Colorss;
  Color? Colorst;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: oneunitbox(
                textin: Head ?? '',
                Colorss: Colorss,
                Colorst: Colorst,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class oneunitbox extends StatelessWidget {
  oneunitbox({
    Key? key,
    this.textin,
    this.textsize,
    this.Colorss,
    this.Colorst,
  }) : super(key: key);
  String? textin;
  double? textsize;
  Color? Colorss;

  Color? Colorst;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 2, left: 2),
          child: Text(
            textin ?? '',
            style: TextStyle(
              fontSize: textsize ?? 12,
              color: Colorst,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colorss ?? Colors.white,
        // border: Border.all(color: Colors.black, width: 2),
        border: Border(
          bottom: BorderSide(
            //                   <--- right side
            color: Color(0xffE0E0E0),
            width: 1,
          ),
        ),
      ),
    );
  }
}

class rowbox_type0_nc extends StatelessWidget {
  rowbox_type0_nc({
    Key? key,
    this.Head,
    this.Colorss,
    this.Colorst,
  }) : super(key: key);
  String? Head;
  Color? Colorss;
  Color? Colorst;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: oneunitbox_nc(
                textin: Head ?? '',
                Colorss: Colorss,
                Colorst: Colorst,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class oneunitbox_nc extends StatelessWidget {
  oneunitbox_nc({
    Key? key,
    this.textin,
    this.textsize,
    this.Colorss,
    this.Colorst,
  }) : super(key: key);
  String? textin;
  double? textsize;
  Color? Colorss;

  Color? Colorst;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            textin ?? '',
            style: TextStyle(
              fontSize: textsize ?? 12,
              color: Colorst,
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colorss ?? Colors.white,
        border: Border(
          bottom: BorderSide(
            //                   <--- right side
            color: Color(0xffE0E0E0),
            width: 1,
          ),
        ),
        // border: Border.all(color: Colors.black, width: 2),
      ),
    );
  }
}

class rowbox_type1 extends StatelessWidget {
  rowbox_type1({
    Key? key,
    this.Head,
  }) : super(key: key);
  String? Head;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: oneunitbox01(),
            ),
          ],
        ),
      ],
    );
  }
}

class oneunitbox01 extends StatelessWidget {
  oneunitbox01({Key? key, this.textin, this.textsize}) : super(key: key);
  String? textin;
  double? textsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Center(
        child: SizedBox(
          child: Center(
            child: Icon(
              Icons.edit,
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: Colors.black, width: 2),
        border: Border(
          bottom: BorderSide(
            //                   <--- right side
            color: Color(0xffE0E0E0),
            width: 1,
          ),
        ),
      ),
    );
  }
}

class rowbox_type2 extends StatelessWidget {
  rowbox_type2({
    Key? key,
    this.Head,
  }) : super(key: key);
  String? Head;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: oneunitbox02(),
            ),
          ],
        ),
      ],
    );
  }
}

class oneunitbox02 extends StatelessWidget {
  oneunitbox02({Key? key, this.textin, this.textsize}) : super(key: key);
  String? textin;
  double? textsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            //                   <--- right side
            color: Color.fromRGBO(224, 224, 224, 1),
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // child: Center(
          //   child: SizedBox(
          //     child: Center(
          //       child: Icon(
          //         Icons.dashboard,
          //       ),
          //     ),
          //   ),
          // ),
          decoration: BoxDecoration(
            color: Colors.white,

            // color: Colors.redAccent.shade400,
            image: DecorationImage(
              image: AssetImage("assets/icons/USEREDIT_B.png"),
              fit: BoxFit.fitHeight,
            ),

            // border: Border.all(color: Colors.black, width: 2),
          ),
        ),
      ),
    );
  }
}

class status_type0 extends StatelessWidget {
  status_type0({
    Key? key,
    this.status,
  }) : super(key: key);
  String? status;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            //                   <--- right side
            color: Color(0xffE0E0E0),
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 4, left: 4, bottom: 6, top: 6),
        child: Container(
          decoration: BoxDecoration(
            color: status == 'Y'
                ? const Color(0xff57E95D)
                : const Color(0xffE95760),

            //
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(status == 'Y' ? "Active" : "Inactive"),
          ),
        ),
      ),
    );
  }
}

class status_type1 extends StatelessWidget {
  status_type1({
    Key? key,
    this.status,
  }) : super(key: key);
  String? status;

  @override
  Widget build(BuildContext context) {
    return
        // Expanded(
        //   child:

        Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            //                   <--- right side
            color: Color(0xffE0E0E0),
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 4, left: 4, bottom: 6, top: 6),
        child: Container(
          decoration: BoxDecoration(
            color: status == 'WAIT'
                ? Colors.yellow
                : status == 'RETURN'
                    ? Colors.yellow.shade400
                    : status == 'REJECT'
                        ? const Color(0xffE95760)
                        : status == 'APPROVE'
                            ? const Color(0xff57E95D)
                            : status == 'CREATE'
                                ? Color.fromARGB(255, 233, 204, 87)
                                : status == 'SEND'
                                    ? Color.fromARGB(255, 87, 145, 233)
                                    : Colors.white,

            //
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              status ?? '',
              style: const TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      // ),
    );
  }
}

class rowbox_type3 extends StatelessWidget {
  rowbox_type3({
    Key? key,
    this.Head,
  }) : super(key: key);
  String? Head;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: oneunitbox03(),
            ),
          ],
        ),
      ],
    );
  }
}

class oneunitbox03 extends StatelessWidget {
  oneunitbox03({Key? key, this.textin, this.textsize}) : super(key: key);
  String? textin;
  double? textsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            //                   <--- right side
            color: Color.fromRGBO(224, 224, 224, 1),
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // child: Center(
          //   child: SizedBox(
          //     child: Center(
          //       child: Icon(
          //         Icons.dashboard,
          //       ),
          //     ),
          //   ),
          // ),
          decoration: BoxDecoration(
            color: Colors.white,

            // color: Colors.redAccent.shade400,
            image: DecorationImage(
              image: AssetImage("assets/icons/EDIT_B.png"),
              fit: BoxFit.fitHeight,
            ),

            // border: Border.all(color: Colors.black, width: 2),
          ),
        ),
      ),
    );
  }
}

class rowbox_type4 extends StatelessWidget {
  rowbox_type4({
    Key? key,
    this.Head,
  }) : super(key: key);
  String? Head;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: oneunitbox04(),
            ),
          ],
        ),
      ],
    );
  }
}

class oneunitbox04 extends StatelessWidget {
  oneunitbox04({Key? key, this.textin, this.textsize}) : super(key: key);
  String? textin;
  double? textsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            //                   <--- right side
            color: Color.fromRGBO(224, 224, 224, 1),
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // child: Center(
          //   child: SizedBox(
          //     child: Center(
          //       child: Icon(
          //         Icons.dashboard,
          //       ),
          //     ),
          //   ),
          // ),
          decoration: BoxDecoration(
            color: Colors.white,

            // color: Colors.redAccent.shade400,
            image: DecorationImage(
              image: AssetImage("assets/icons/BIN_B.png"),
              fit: BoxFit.fitHeight,
            ),

            // border: Border.all(color: Colors.black, width: 2),
          ),
        ),
      ),
    );
  }
}

class rowbox_type5 extends StatelessWidget {
  rowbox_type5({
    Key? key,
    this.Head,
  }) : super(key: key);
  String? Head;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: oneunitbox05(),
            ),
          ],
        ),
      ],
    );
  }
}

class oneunitbox05 extends StatelessWidget {
  oneunitbox05({Key? key, this.textin, this.textsize}) : super(key: key);
  String? textin;
  double? textsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            //                   <--- right side
            color: Color.fromRGBO(224, 224, 224, 1),
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // child: Center(
          //   child: SizedBox(
          //     child: Center(
          //       child: Icon(
          //         Icons.dashboard,
          //       ),
          //     ),
          //   ),
          // ),
          decoration: BoxDecoration(
            color: Colors.white,

            // color: Colors.redAccent.shade400,
            image: DecorationImage(
              image: AssetImage("assets/icons/EYE_B.png"),
              fit: BoxFit.fitHeight,
            ),

            // border: Border.all(color: Colors.black, width: 2),
          ),
        ),
      ),
    );
  }
}

class rowbox_type6 extends StatelessWidget {
  rowbox_type6({
    Key? key,
    this.Head,
  }) : super(key: key);
  String? Head;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: oneunitbox06(),
            ),
          ],
        ),
      ],
    );
  }
}

class oneunitbox06 extends StatelessWidget {
  oneunitbox06({Key? key, this.textin, this.textsize}) : super(key: key);
  String? textin;
  double? textsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            //                   <--- right side
            color: Color.fromRGBO(224, 224, 224, 1),
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: SizedBox(
              child: Center(
                child: Icon(
                  Icons.upload,
                  color: Colors.black,
                  size: 24.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
