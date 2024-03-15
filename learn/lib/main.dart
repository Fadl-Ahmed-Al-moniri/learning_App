import 'package:flutter/material.dart';
import 'package:learn/elemantes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    double screeenheight = MediaQuery.of(context).size.height;
    double screeenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Stepper(
          currentStep: _currentStep,
          connectorThickness: 3,

          elevation: 0,

          //  connectorColor: MaterialStateProperty.resolveAs(Colors.accents, Colors.accents),

          type: StepperType.horizontal,
          steps: getSteps(),
          onStepContinue: () {
            _currentStep == getSteps().length - 1
                ? null
                : setState(() {
                    _currentStep += 1;
                  });
          },

          // onStepCancel: () {
          //   _currentStep == getSteps().first
          //       ? null
          //       : setState(() {
          //           _currentStep -= 1;
          //         });
          // },
          controlsBuilder: (context, onStepContinue) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: mybottom("التالي", tap: onStepContinue.onStepContinue));
          },
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
            title: _currentStep == 0
                ? Image.asset(
                    r"images\1710454976805.png",
                    fit: BoxFit.contain,
                  )
                : const Text(""),
            content: Container(
              height: MediaQuery.of(context).size.height / 1.4,
              width: MediaQuery.of(context).size.width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    mytext("تعرف علينا", mycolor: Colors.red),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 10),
                    ),
                    mytext(
                        "عالم الحروف تطبيق تعليمي تفاعلي يهدف لدمج التعلم بالترفيه",
                        mycolor: Colors.blue,
                        myfontFamily: "")
                  ]),
            ),
            isActive: _currentStep >= 0),
        Step(
            title: _currentStep == 1
                ? Image.asset(
                    r"images\1710454976805.png",
                    fit: BoxFit.contain,
                  )
                : const Text(""),
            content: Container(),
            isActive: _currentStep >= 1),
        Step(
            title: _currentStep == 2
                ? Image.asset(
                    r"images\1710454976805.png",
                    fit: BoxFit.contain,
                  )
                : const Text(""),
            content: Container(),
            isActive: _currentStep >= 2),
      ];
  // Widget mybottom() {
  //   return Container(
  //     height: 80,
  //     width: 100,
  //     decoration: const BoxDecoration(
  //       gradient: LinearGradient(colors: [Colors.blue,Color.fromARGB(255, 14, 106, 182),
  //       ],begin:AlignmentDirectional.topStart,end: AlignmentDirectional.bottomEnd
  //        )

  //     ),
  //   );
  // }
}
