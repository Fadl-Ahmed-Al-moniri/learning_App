import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:learn/custom_button.dart';
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
  int activeStep = 0;
  int activeStep2 = 0;
  int reachedStep = 0;
  int upperBound = 5;
  double progress = 0.2;
  Set<int> reachedSteps = <int>{0, 2, 4, 5};
  final Widgetes = <Widget>[
    Container(
      color: Colors.white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: SizedBox(
                height: 281,
                width: 360,
              ),
            ),
            mytext("تعرف علينا", mycolor: Colors.red, mysize: 25),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: mytext(
                  "عالم الحروف تطبيق تعليمي تفاعلي يهدف لدمج التعلم بالترفيه",
                  mycolor: Colors.blue,
                  myfontFamily: "Monadi",
                  mysize: 24),
            )
          ]),
    ),
    Container(
      color: Colors.white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 281,
                width: 360,
                child: Image.asset(
                  r"images\bef0c802019aaab8dd99f5457204e7e2.gif",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            mytext("مالذي يميزنا؟", mycolor: Colors.red, mysize: 25),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: mytext(
                  "تطوير مهارات التعرف على الحروف الابجدية بطريقة ممتعة وتفاعلية لزرع حب التعلم ",
                  mycolor: Colors.blue,
                  myfontFamily: "Monadi",
                  mysize: 24),
            )
          ]),
    ),
    Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Image.asset(
                    r"images\927bdcf59e5a5d073e6e2086d82f2e0a.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: 171,
                  margin: const EdgeInsets.only(bottom: 15),
                  height: 266,
                  child: Image.asset(
                    r"images\3578009246170d48c2abc7d0f2bb09b9.png",
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
          mytext("تحب المغامرة  ؟", mycolor: Colors.red),
          const Padding(
            padding: EdgeInsets.only(top: 5, right: 10),
          ),
          mytext("شارك في مغامرة التعرف على الحروف الابجدية مع ماجد و حنين ",
              mycolor: Colors.blue, myfontFamily: "Monadi", mysize: 24)
        ]),
  ];

  void increaseProgress() {
    if (progress < 1) {
      setState(() => progress += 0.2);
    } else {
      setState(() => progress = 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screeenheight = MediaQuery.of(context).size.height;
    double screeenwidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            EasyStepper(
              activeStep: activeStep,
              lineStyle: const LineStyle(
                lineLength: 61,
                lineType: LineType.normal,
                lineThickness: 4,
                lineSpace: 0,
                lineWidth: 10,
                defaultLineColor: const Color.fromARGB(200, 169, 206, 210),
                finishedLineColor: const Color.fromARGB(255, 56, 133, 252),
                unreachedLineType: LineType.dashed,
              ),
              stepShape: StepShape.rRectangle,
              stepBorderRadius: 50,
              borderThickness: 11,
              internalPadding: 0,
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 35,
                vertical: 30,
              ),
              stepRadius: 35,
              finishedStepBorderColor: const Color.fromARGB(255, 56, 133, 252),
              showStepBorder: true,
              finishedStepTextColor: const Color.fromARGB(255, 56, 133, 252),
              finishedStepBackgroundColor:
                  const Color.fromARGB(255, 169, 206, 210),
              activeStepIconColor: Colors.deepOrange,
              activeStepBorderColor: const Color.fromARGB(255, 56, 133, 252),
              unreachedStepBackgroundColor:
                  const Color.fromARGB(200, 169, 206, 210),
              activeStepBackgroundColor:
                  const Color.fromARGB(255, 169, 206, 210),
              unreachedStepBorderColor: const Color.fromARGB(150, 56, 133, 252),
              showLoadingAnimation: false,
              defaultStepBorderType: BorderType.normal,
              steps: [
                EasyStep(
                  customStep: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Opacity(
                      opacity: activeStep >= 0 ? 1 : 0.3,
                      child: mytext("1", myfontFamily: "DG-3asomy-Regular"),
                    ),
                  ),
                ),
                EasyStep(
                  customStep: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Opacity(
                      opacity: activeStep >= 1 ? 1 : 0.3,
                      child: mytext("2", myfontFamily: "DG-3asomy-Regular"),
                    ),
                  ),
                ),
                EasyStep(
                  customStep: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Opacity(
                      opacity: activeStep >= 2 ? 1 : 0.3,
                      child: mytext("3", myfontFamily: "DG-3asomy-Regular"),
                    ),
                  ),
                ),
              ],
              onStepReached: (index) => setState(() => activeStep = index),
            ),
            SizedBox(
              height: screeenheight / 1.7,
              width: screeenwidth / 1.2,
              child: Widgetes[activeStep],
            ),
            CustomButton(
              navigateto: (context) => Widgetes[activeStep],
            )
            // activeStep == 2
            //     ? mybottom("هيا لنبدأ", tap: () => Widgetes[activeStep])
            //     :

            // mybottom("التالي", tap: () => Widgetes[activeStep])
          ]),
        ),
        backgroundColor: Colors.white,
      ),
    );

    // return Scaffold(
    //   body: Padding(
    //     padding: const EdgeInsets.only(top: 35),
    //     child: Stepper(
    //       currentStep: _currentStep,
    //       connectorThickness: 3,

    //       elevation: 0,

    //       //  connectorColor: MaterialStateProperty.resolveAs(Colors.accents, Colors.accents),

    //       type: StepperType.horizontal,
    //       steps: getSteps(),
    //       onStepContinue: () {
    //         _currentStep == getSteps().length - 1
    //             ? null
    //             : setState(() {
    //                 _currentStep += 1;
    //               });
    //       },

    //       // onStepCancel: () {
    //       //   _currentStep == getSteps().first
    //       //       ? null
    //       //       : setState(() {
    //       //           _currentStep -= 1;
    //       //         });
    //       // },
    //       controlsBuilder: (context, onStepContinue) {
    //         return Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 120),
    //             child: mybottom("التالي", tap: onStepContinue.onStepContinue));
    //       },
    //     ),
    //   ),
    // );
  }

  // List<Step> getSteps() => [
  //       Step(
  //           title: _currentStep == 0
  //               ? Container(
  //                   height: 127,
  //                   width: 169,
  //                   child: Image.asset(
  //                     r"images\2bc79d0ed8f4866038405ea83d313fd9.gif",
  //                     fit: BoxFit.fill,
  //                   ),
  //                 )
  //               : const Text(""),
  // content: Container(
  //   height: MediaQuery.of(context).size.height / 1.4,
  //   width: MediaQuery.of(context).size.width,
  //   child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.end,
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         mytext("تعرف علينا", mycolor: Colors.red),
  //         const Padding(
  //           padding: EdgeInsets.only(top: 30, right: 10),
  //         ),
  //         mytext(
  //             "عالم الحروف تطبيق تعليمي تفاعلي يهدف لدمج التعلم بالترفيه",
  //             mycolor: Colors.blue,
  //             myfontFamily: "Monadi")
  //       ]),
  // ),
  //           isActive: _currentStep >= 0),
  //       Step(
  //           title: _currentStep == 1
  //               ? Image.asset(
  //                   r"images\2bc79d0ed8f4866038405ea83d313fd9.gif",
  //                   fit: BoxFit.contain,
  //                 )
  //               : const Text(""),
  //           content: Container(),
  //           isActive: _currentStep >= 1),
  //       Step(
  //           title: _currentStep == 2
  //               ? Image.asset(
  //                   r"images\2bc79d0ed8f4866038405ea83d313fd9.gif",
  //                   fit: BoxFit.contain,
  //                 )
  //               : const Text(""),
  //           content: Container(),
  //           isActive: _currentStep >= 2),
  //     ];
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
