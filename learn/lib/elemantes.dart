import 'package:flutter/material.dart';

Widget mytext(String txt,
    {Color mycolor = Colors.white, String myfontFamily = "Marhey"}) {
  return Text(
    txt,
    style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        fontFamily: myfontFamily,
        color: mycolor),
  );
}

Widget mybottom(String txt2, {VoidCallback? tap}) {
  return Container(
    height: 50,
    width: 140,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 57, 134, 252),
            Color.fromARGB(255, 49, 120, 228),
          ],
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
          stops: [0.5, 0.4]),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)),
    ),
    child: MaterialButton(
        onPressed: tap, textColor: Colors.white, child: mytext(txt2)),
  );
}
