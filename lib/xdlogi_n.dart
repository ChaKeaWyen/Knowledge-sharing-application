import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDLOGIN extends StatelessWidget {
  XDLOGIN({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffedd9d4),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 93.0, end: 93.0),
            Pin(size: 47.0, middle: 0.4714),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xff000000),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 93.0, end: 93.0),
            Pin(size: 47.0, middle: 0.3742),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xff000000),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 146.0, middle: 0.5038),
            Pin(size: 63.0, middle: 0.2243),
            child: Text(
              'LOGIN',
              style: TextStyle(
                fontFamily: 'Microsoft Tai Le',
                fontSize: 50,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 258.0, middle: 0.5),
            Pin(size: 27.0, middle: 0.5552),
            child: Text(
              'Doesn’t have an account yet?',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.0, middle: 0.5),
            Pin(size: 27.0, middle: 0.6026),
            child: Text(
              'Sign up',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff000000),
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 22.0, middle: 0.5),
            Pin(size: 27.0, middle: 0.6501),
            child: Text(
              'Or',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 161.0, middle: 0.502),
            Pin(size: 27.0, middle: 0.6975),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Continue as ',
                  ),
                  TextSpan(
                    text: 'Guest',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 94.0, middle: 0.5),
            Pin(size: 27.0, middle: 0.3772),
            child: Text(
              'Username',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 88.0, middle: 0.5),
            Pin(size: 27.0, middle: 0.4721),
            child: Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 71.0, start: 7.0),
            Pin(size: 197.0, end: -10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xffead095),
                border: Border.all(width: 1.0, color: const Color(0x00707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 71.0, middle: 0.261),
            Pin(size: 197.0, end: -10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xffed8568),
                border: Border.all(width: 1.0, color: const Color(0x00707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 71.0, middle: 0.5015),
            Pin(size: 197.0, end: -10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xffc14b3d),
                border: Border.all(width: 1.0, color: const Color(0x00707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 71.0, middle: 0.7419),
            Pin(size: 197.0, end: -10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xff45533c),
                border: Border.all(width: 1.0, color: const Color(0x00707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 71.0, end: 6.0),
            Pin(size: 197.0, end: -10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xff8a9d70),
                border: Border.all(width: 1.0, color: const Color(0x00707070)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
