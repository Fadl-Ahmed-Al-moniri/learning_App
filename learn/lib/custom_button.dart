import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  late WidgetBuilder navigateto;

  CustomButton({required this.navigateto});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: const Color.fromARGB(255, 0, 100, 255),
        height: 68.38,
        minWidth: 166.4,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: navigateto,
          ));
        },
        child: const Text(
          "التالي",
          textAlign: TextAlign.right,
          style: TextStyle(
              // fontWeight: FontWeight.w600,
              fontSize: 27,
              decorationColor: Colors.red,
              leadingDistribution: TextLeadingDistribution.proportional,
              fontFamily: "Blabeloo-font-v.1.0",
              color: Colors.white),
        ));
  }
}
