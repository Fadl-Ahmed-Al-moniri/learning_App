import 'package:flutter/material.dart';

Widget mytext(String txt,
    {Color mycolor = Colors.white,
    String myfontFamily = "Blabeloo-font-v.1.0",
    double mysize = 26}) {
  return Text(
    txt,
    textAlign: TextAlign.right,
    selectionColor: Colors.red,
    style: TextStyle(
        // fontWeight: FontWeight.w600,
        fontSize: mysize,
        decorationColor: Colors.red,
        leadingDistribution: TextLeadingDistribution.proportional,
        fontFamily: myfontFamily,
        color: mycolor),
  );
}

Widget mybottom(String txt2, {VoidCallback? tap}) {
  return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: const Color.fromARGB(255, 0, 100, 255),
      height: 68.38,
      minWidth: 166.4,
      onPressed: tap,
      textColor: Colors.white,
      child: Text(
        txt2,
        textAlign: TextAlign.right,
        style: const TextStyle(
            // fontWeight: FontWeight.w600,
            fontSize: 27,
            decorationColor: Colors.red,
            leadingDistribution: TextLeadingDistribution.proportional,
            fontFamily: "Blabeloo-font-v.1.0",
            color: Colors.white),
      ));
}
