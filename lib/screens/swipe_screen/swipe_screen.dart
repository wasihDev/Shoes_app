import 'package:flutter/material.dart';
import 'package:my_shoes_app_flutter/constants/colors.dart';
import 'package:my_shoes_app_flutter/screens/home_screen/home_screen.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../utils/routes/routes.dart';

class SwipeScreen extends StatefulWidget {
  SwipeScreen({Key? key}) : super(key: key);

  @override
  State<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 18.0, top: h / 20),
          child: SingleChildScrollView(
            child: Column(children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          'BORN TO FLY',
                          style: TextStyle(
                              fontFamily: 'RussoOne-Regular',
                              fontSize: h / 17,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          'UNITYKIT',
                          style: TextStyle(
                              color: const Color(0xff28a2a3),
                              fontFamily: 'RussoOne-Regular',
                              fontSize: h / 24,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: h / 60,
                    left: w / 12,
                    child: Image.asset(
                      'assets/images/Main_1.png',
                      scale: 7,
                    ),
                  ),
                  Positioned(
                      top: 500,
                      left: 40,
                      child: CustomPaint(
                        size: Size(
                            w,
                            (w * 0.625)
                                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                        painter: RPSCustomPainter(),
                      )),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 18.0, right: 18.0, top: h * .8),
                    child: SlideAction(
                      innerColor: AppColor.primaryColor,
                      outerColor: AppColor.lightBlack,
                      sliderButtonIcon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppColor.secondaryColor),
                      onSubmit: () {
                        Future.delayed(
                            const Duration(seconds: 1),
                            () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen())));
                      },
                      child: Row(
                        children: [
                          SizedBox(width: w * .250),
                          const Text(
                            'Swipe to get started',
                            style: TextStyle(
                                color: AppColor.secondaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(width: w / 10),
                          const Icon(Icons.arrow_forward_ios_rounded,
                              color: Colors.white, size: 18),
                          const Icon(Icons.arrow_forward_ios_rounded,
                              color: Colors.white70, size: 15),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: w / 25,
                    top: 20,
                    child: Column(
                      children: [
                        RotatedBox(
                          quarterTurns: -1,
                          child: Row(
                            children: [
                              const Icon(Icons.circle,
                                  color: Color(0xff28a2a3), size: 14),
                              Text(
                                '+72 891 322332',
                                style: TextStyle(
                                    color: const Color(0xff28a2a3),
                                    fontFamily: 'RussoOne-Regular',
                                    fontSize: h / 60,
                                    fontWeight: FontWeight.w200),
                              ),
                              SizedBox(
                                width: w / 4,
                              ),
                            ],
                          ),
                        ),
                        sideColorText(h, "+72 891 322332", Colors.yellow),
                        sideColorText(h, "+72 891 322332", Colors.red),
                      ],
                    ),
                  ),
                ],
              ),
              // Stack(clipBehavior: Clip.none, children: [
              //   Positioned(
              //     child:
              //   ),
              // ]),
            ]),
          ),
        ),
      ),
    );
  }

  RotatedBox sideColorText(double h, String text, Color colors) {
    return RotatedBox(
      quarterTurns: -1,
      child: Row(
        children: [
          const Icon(Icons.circle, color: Colors.red, size: 14),
          Text(
            text,
            style: TextStyle(
                color: colors,
                fontFamily: 'RussoOne-Regular',
                fontSize: h / 60,
                fontWeight: FontWeight.w200),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color(0xff28a2a3)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.8737500, size.height * 0.0980000);
    path0.lineTo(size.width * 0.8737500, size.height * 0.9020000);
    path0.lineTo(size.width * 0.8737500, size.height);
    path0.lineTo(size.width * 0.1250000, size.height);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
