import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDProfile extends StatelessWidget {
  XDProfile({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 116.0, start: 39.0),
            Pin(size: 116.0, start: 71.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffc14b3d),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 153.0, end: 53.0),
            Pin(size: 38.0, start: 91.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xff8a9d70),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 153.0, end: 53.0),
            Pin(size: 38.0, start: 135.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xff45533c),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 35.0),
            Pin(size: 59.0, middle: 0.3342),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xffead5c2),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 147.0, start: 36.0),
            Pin(size: 137.0, middle: 0.5375),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xff999999),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 171.0, end: 35.0),
            Pin(size: 137.0, middle: 0.5375),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xffead095),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 147.0, start: 36.0),
            Pin(size: 245.0, end: 60.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xffed8568),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 171.0, end: 35.0),
            Pin(size: 253.0, end: 52.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xff8a9d70),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 21.0, end: 24.0),
            Pin(size: 56.0, end: 16.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'bar' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27.0),
                      color: const Color(0xffebebeb),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 43.5, start: 35.0),
                  Pin(start: 8.5, end: 8.5),
                  child: SvgPicture.string(
                    _svg_qvqb4n,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 39.1, middle: 0.3643),
                  Pin(start: 8.9, end: 8.5),
                  child: SvgPicture.string(
                    _svg_e37xmf,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 43.1, middle: 0.6159),
                  Pin(start: 8.5, end: 8.8),
                  child: SvgPicture.string(
                    _svg_z1zvuj,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 36.4, end: 47.1),
                  Pin(size: 35.0, middle: 0.5952),
                  child: SvgPicture.string(
                    _svg_ooylz,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 77.0, start: 39.0),
            Pin(size: 33.0, start: 21.0),
            child: Text(
              'Profile',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 25,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 53.0, start: 39.0),
            Pin(size: 33.0, middle: 0.2318),
            child: Text(
              'User',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 25,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 173.0, start: 39.0),
            Pin(size: 27.0, middle: 0.2693),
            child: Text(
              'Bio describe yourself',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 119.0, start: 36.0),
            Pin(size: 30.0, middle: 0.4048),
            child: Text(
              'User\'s Note',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 22,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 112.0, middle: 0.7567),
            Pin(size: 26.0, start: 95.0),
            child: Text(
              '666 follower',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 19,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 123.0, middle: 0.7682),
            Pin(size: 26.0, start: 139.0),
            child: Text(
              '666 following',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 19,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 82.0, middle: 0.5),
            Pin(size: 27.0, middle: 0.3405),
            child: Text(
              'Follow +',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 77.0, middle: 0.2119),
            Pin(size: 77.0, middle: 0.5347),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffebebeb),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 49.0, middle: 0.2342),
            Pin(size: 94.0, middle: 0.5245),
            child: Text(
              '+',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 70,
                color: const Color(0xff999999),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 29.5, end: 32.2),
            Pin(size: 29.5, start: 29.7),
            child:
                // Adobe XD layer: 'setting icon' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 4.1, end: 4.6),
                  Pin(start: 4.0, end: 4.7),
                  child: SvgPicture.string(
                    _svg_a1clp,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 6.1, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.1),
                        Pin(size: 5.4, start: 0.0),
                        child: SvgPicture.string(
                          _svg_k6557x,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.1, end: 0.0),
                        Pin(size: 5.4, end: 0.0),
                        child: SvgPicture.string(
                          _svg_kdpmdf,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 11.7, end: 11.7),
                  Pin(size: 29.5, middle: -1.75),
                  child: Transform.rotate(
                    angle: 1.5708,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.1),
                          Pin(size: 5.4, start: 0.0),
                          child: SvgPicture.string(
                            _svg_yqexll,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.1, end: 0.0),
                          Pin(size: 5.4, end: 0.0),
                          child: SvgPicture.string(
                            _svg_cg1v6f,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 11.7, end: 11.7),
                  Pin(start: 0.0, end: 0.0),
                  child: Transform.rotate(
                    angle: 0.7854,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.1),
                          Pin(size: 5.4, start: 0.0),
                          child: SvgPicture.string(
                            _svg_e0kmdi,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.1, end: 0.0),
                          Pin(size: 5.4, end: 0.0),
                          child: SvgPicture.string(
                            _svg_qpel38,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 11.7, end: 11.7),
                  Pin(start: 0.0, end: 0.0),
                  child: Transform.rotate(
                    angle: -0.7854,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.1),
                          Pin(size: 5.4, start: 0.0),
                          child: SvgPicture.string(
                            _svg_ogmusr,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.1, end: 0.0),
                          Pin(size: 5.4, end: 0.0),
                          child: SvgPicture.string(
                            _svg_xmzvl2,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_qvqb4n =
    '<svg viewBox="59.0 806.5 43.5 39.0" ><path transform="translate(59.0, 806.5)" d="M 15.53332614898682 39.00060272216797 L 15.53254890441895 39.00060272216797 L 6.213474273681641 38.99995803833008 L 6.213474273681641 19.1800537109375 L 4.606934453477152e-06 19.1800537109375 L 21.74679374694824 2.504882786524831e-06 L 43.49359130859375 19.1800537109375 L 37.28012084960938 19.1800537109375 L 37.28012084960938 38.99932479858398 L 27.96026229858398 38.99995803833008 L 27.96026229858398 26.2132568359375 L 15.53332614898682 26.2132568359375 L 15.53332614898682 38.99995803833008 L 15.53332614898682 39.00060272216797 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e37xmf =
    '<svg viewBox="143.4 806.9 39.1 38.6" ><path transform="translate(143.43, 806.87)" d="M 20.99008560180664 24.73312950134277 C 18.84691619873047 26.16499137878418 16.27082252502441 27 13.5 27 C 6.044400215148926 27 0 20.95560073852539 0 13.5 C 0 6.044400215148926 6.044400215148926 0 13.5 0 C 20.95560073852539 0 27 6.044400215148926 27 13.5 C 27 16.01144218444824 26.31422424316406 18.36251068115234 25.11960220336914 20.37660217285156 L 39.13199996948242 34.38899993896484 L 34.88940048217773 38.63159942626953 L 20.99008560180664 24.73312950134277 Z" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z1zvuj =
    '<svg viewBox="223.5 806.5 43.1 38.7" ><path transform="translate(223.51, 806.5)" d="M 21.52545738220215 38.65737533569336 C 9.951356887817383 30.93876838684082 3.881199836730957 23.91690635681152 1.391742706298828 18.0400447845459 C -5.277381896972656 2.290799379348755 13.77164268493652 -5.240968704223633 21.52545738220215 4.056158065795898 C 29.27927589416504 -5.240968704223633 48.32830047607422 2.290799379348755 41.6591796875 18.0400447845459 C 39.16971969604492 23.91690635681152 33.09955978393555 30.93876838684082 21.52545738220215 38.65737533569336 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ooylz =
    '<svg viewBox="307.5 810.5 36.4 35.0" ><path transform="translate(240.22, 810.5)" d="M 103.7218246459961 35.00041198730469 L 67.27716064453125 35.00041198730469 C 67.69739532470703 30.46681976318359 69.7794189453125 26.26927757263184 73.13938903808594 23.18071365356445 C 76.52071380615234 20.07253265380859 80.91028594970703 18.36078262329102 85.49949645996094 18.36078262329102 C 90.08879852294922 18.36078262329102 94.47840118408203 20.07253265380859 97.85970306396484 23.18071365356445 C 101.2197418212891 26.26936340332031 103.3016204833984 30.46701049804688 103.7218246459961 35.00041198730469 Z M 85.49949645996094 15.49193572998047 C 84.45718383789062 15.49193572998047 83.446044921875 15.28714179992676 82.49417877197266 14.88323879241943 C 81.57476806640625 14.49311351776123 80.74904632568359 13.93460750579834 80.03994750976562 13.22324180603027 C 79.33084106445312 12.51186561584473 78.77411651611328 11.68348598480225 78.38523864746094 10.76110076904297 C 77.98259735107422 9.80612850189209 77.77845764160156 8.791693687438965 77.77845764160156 7.745974540710449 C 77.77845764160156 6.700255393981934 77.98259735107422 5.685821056365967 78.38523864746094 4.730847358703613 C 78.77412414550781 3.808464288711548 79.33084869384766 2.98007869720459 80.03994750976562 2.268707752227783 C 80.74903869628906 1.557340979576111 81.57476043701172 0.9988370537757874 82.49417877197266 0.6087096333503723 C 83.44605255126953 0.2048072218894958 84.45719146728516 9.161703019344714e-06 85.49949645996094 9.161703019344714e-06 C 86.54186248779297 9.161703019344714e-06 87.55303192138672 0.2048072218894958 88.50491333007812 0.6087096333503723 C 89.42434692382812 0.9988327026367188 90.25006103515625 1.557336568832397 90.95914459228516 2.268707752227783 C 91.66822052001953 2.980073928833008 92.22492980957031 3.808459758758545 92.61379241943359 4.730847358703613 C 93.01639556884766 5.685811996459961 93.22053527832031 6.700247287750244 93.22053527832031 7.745974540710449 C 93.22053527832031 8.791706085205078 93.01639556884766 9.80614185333252 92.61379241943359 10.76110076904297 C 92.22492980957031 11.68349838256836 91.66822052001953 12.51188087463379 90.95914459228516 13.22324180603027 C 90.25006103515625 13.93461227416992 89.42434692382812 14.49311637878418 88.50491333007812 14.88323879241943 C 87.55304718017578 15.28714179992676 86.5418701171875 15.49193572998047 85.49949645996094 15.49193572998047 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k6557x =
    '<svg viewBox="0.0 0.0 6.0 5.4" ><path transform="translate(4.25, 0.0)" d="M -3.087301254272461 0 L 0.7271885871887207 0 C 1.125750780105591 0 1.448849678039551 0.3230983018875122 1.448849678039551 0.721660315990448 L 1.778226852416992 5.076980590820312 C 1.778226852416992 5.475543022155762 -4.246780395507812 5.475543022155762 -4.246780395507812 5.076980590820312 L -3.808961629867554 0.721660315990448 C -3.808961629867554 0.3230983018875122 -3.485863208770752 0 -3.087301254272461 0 Z" fill="#000000" stroke="#000000" stroke-width="4" stroke-dasharray="4 4" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
const String _svg_kdpmdf =
    '<svg viewBox="0.1 24.1 6.0 5.4" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 6.08, 29.5)" d="M 1.159479260444641 -2.453141805593321e-32 L 4.973968982696533 -1.052356262947944e-31 C 5.372531414031982 -1.136681055500792e-31 5.695629596710205 0.3230983018875122 5.695629596710205 0.721660315990448 L 6.025007724761963 5.076980590820312 C 6.025007724761963 5.475543022155762 -1.158475426061647e-31 5.475543022155762 -1.074150515959365e-31 5.076980590820312 L 0.4378190040588379 0.721660315990448 C 0.4378190040588379 0.3230983018875122 0.7609171867370605 -1.609893439254467e-32 1.159479260444641 -2.453141805593321e-32 Z" fill="#000000" stroke="#000000" stroke-width="4" stroke-dasharray="4 4" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
const String _svg_a1clp =
    '<svg viewBox="-310.8 969.0 20.8 20.8" ><path transform="translate(-310.75, 969.02)" d="M 10.39775943756104 20.79551887512207 C 8.994064331054688 20.79551887512207 7.632357120513916 20.52059936523438 6.350464344024658 19.9784049987793 C 5.734357833862305 19.71780967712402 5.140119552612305 19.39526748657227 4.584258079528809 19.01972961425781 C 4.033682346343994 18.64776992797852 3.515941381454468 18.22059440612793 3.045417785644531 17.75006675720215 C 2.574899911880493 17.27954292297363 2.147727251052856 16.76180267333984 1.7757648229599 16.21122360229492 C 1.400232195854187 15.65535926818848 1.077692270278931 15.06112098693848 0.8171008825302124 14.44501495361328 C 0.2749126255512238 13.16312694549561 0 11.80143547058105 0 10.39775943756104 C 0 8.994057655334473 0.2749126255512238 7.632354736328125 0.8171008825302124 6.350464344024658 C 1.077694773674011 5.734353065490723 1.400234699249268 5.140114307403564 1.7757648229599 4.584258079528809 C 2.147716999053955 4.033687114715576 2.574889898300171 3.515946626663208 3.045417785644531 3.045417785644531 C 3.515946626663208 2.574889898300171 4.033687114715576 2.147716999053955 4.584258079528809 1.7757648229599 C 5.140114307403564 1.400234699249268 5.734353065490723 1.077694773674011 6.350464344024658 0.8171008825302124 C 7.632354736328125 0.2749126255512238 8.994057655334473 0 10.39775943756104 0 C 11.80143547058105 0 13.16312694549561 0.2749126255512238 14.44501495361328 0.8171008825302124 C 15.06112098693848 1.077692270278931 15.65535926818848 1.400232195854187 16.21122360229492 1.7757648229599 C 16.76180267333984 2.147727251052856 17.27954292297363 2.574899911880493 17.75006675720215 3.045417785644531 C 18.22059440612793 3.515941381454468 18.64776992797852 4.033682346343994 19.01972961425781 4.584258079528809 C 19.39526748657227 5.140119552612305 19.71780967712402 5.734357833862305 19.9784049987793 6.350464344024658 C 20.52059936523438 7.632357120513916 20.79551887512207 8.994064331054688 20.79551887512207 10.39775943756104 C 20.79551887512207 11.80143165588379 20.52059936523438 13.16312408447266 19.9784049987793 14.44501495361328 C 19.71780967712402 15.06112098693848 19.39526748657227 15.65535926818848 19.01972961425781 16.21122360229492 C 18.64776039123535 16.76180648803711 18.22058296203613 17.27955055236816 17.75006675720215 17.75006675720215 C 17.27955055236816 18.22058296203613 16.76180648803711 18.64776039123535 16.21122360229492 19.01972961425781 C 15.65535926818848 19.39526748657227 15.06112098693848 19.71780967712402 14.44501495361328 19.9784049987793 C 13.16312408447266 20.52059936523438 11.80143165588379 20.79551887512207 10.39775943756104 20.79551887512207 Z M 10.39775943756104 4.302543163299561 C 7.03684663772583 4.302543163299561 4.302543163299561 7.03684663772583 4.302543163299561 10.39775943756104 C 4.302543163299561 13.75867176055908 7.03684663772583 16.49297523498535 10.39775943756104 16.49297523498535 C 13.75867176055908 16.49297523498535 16.49297523498535 13.75867176055908 16.49297523498535 10.39775943756104 C 16.49297523498535 7.03684663772583 13.75867176055908 4.302543163299561 10.39775943756104 4.302543163299561 Z" fill="#000000" stroke="#000000" stroke-width="4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yqexll =
    '<svg viewBox="0.0 0.0 6.0 5.4" ><path transform="translate(0.0, 0.0)" d="M 1.159479260444641 -6.024261611170371e-35 L 4.973968982696533 4.029186150331891e-32 C 5.372531414031982 4.450810113096127e-32 5.695629596710205 0.3230983018875122 5.695629596710205 0.721660315990448 L 6.025007724761963 5.076980590820312 C 6.025007724761963 5.475543022155762 4.216246974482057e-33 5.475543022155762 0 5.076980590820312 L 0.4378190040588379 0.721660315990448 C 0.4378190040588379 0.3230983018875122 0.7609171867370605 -4.276484447805976e-33 1.159479260444641 -6.024261611170371e-35 Z" fill="#000000" stroke="#000000" stroke-width="4" stroke-dasharray="4 4" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
const String _svg_cg1v6f =
    '<svg viewBox="0.1 24.1 6.0 5.4" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 6.08, 29.5)" d="M 1.159479260444641 2.453141805593321e-32 L 4.973968982696533 1.052356262947944e-31 C 5.372531414031982 1.136681055500792e-31 5.695629596710205 0.3230983018875122 5.695629596710205 0.721660315990448 L 6.025007724761963 5.076980590820312 C 6.025007724761963 5.475543022155762 2.316950852123295e-31 5.475543022155762 2.14830103191873e-31 5.076980590820312 L 0.4378190040588379 0.721660315990448 C 0.4378190040588379 0.3230983018875122 0.7609171867370605 1.609893439254467e-32 1.159479260444641 2.453141805593321e-32 Z" fill="#000000" stroke="#000000" stroke-width="4" stroke-dasharray="4 4" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
const String _svg_e0kmdi =
    '<svg viewBox="0.0 0.0 6.0 5.4" ><path transform="translate(0.0, 0.0)" d="M 1.159479260444641 0 L 4.973968982696533 3.634594289168765e-16 C 5.372531414031982 4.014359658185659e-16 5.695629596710205 0.3230983018875122 5.695629596710205 0.721660315990448 L 6.025007724761963 5.076980590820312 C 6.025007724761963 5.475543022155762 3.797657660635875e-17 5.475543022155762 0 5.076980590820312 L 0.4378190040588379 0.721660315990448 C 0.4378190040588379 0.3230983018875122 0.7609171867370605 -3.797653359296689e-17 1.159479260444641 0 Z" fill="#000000" stroke="#000000" stroke-width="4" stroke-dasharray="4 4" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
const String _svg_qpel38 =
    '<svg viewBox="0.1 24.1 6.0 5.4" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 6.08, 29.5)" d="M 1.159479260444641 1.104796852155707e-16 L 4.973968982696533 4.73939127367337e-16 C 5.372531414031982 5.119156377992467e-16 5.695629596710205 0.3230983018875122 5.695629596710205 0.721660315990448 L 6.025007724761963 5.076980590820312 C 6.025007724761963 5.475543022155762 7.74039485977967e-17 5.475543022155762 3.94273686827155e-17 5.076980590820312 L 0.4378190040588379 0.721660315990448 C 0.4378190040588379 0.3230983018875122 0.7609171867370605 7.250315493132623e-17 1.159479260444641 1.104796852155707e-16 Z" fill="#000000" stroke="#000000" stroke-width="4" stroke-dasharray="4 4" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
const String _svg_ogmusr =
    '<svg viewBox="0.0 0.0 6.0 5.4" ><path transform="translate(0.0, 0.0)" d="M 1.159479260444641 3.634594289168765e-16 L 4.973968982696533 3.081487911019577e-33 C 5.372531414031982 -3.797654351913424e-17 5.695629596710205 0.3230983018875122 5.695629596710205 0.721660315990448 L 6.025007724761963 5.076980590820312 C 6.025007724761963 5.475543022155762 -3.797657660635875e-17 5.475543022155762 0 5.076980590820312 L 0.4378190040588379 0.721660315990448 C 0.4378190040588379 0.3230983018875122 0.7609171867370605 4.014359658185659e-16 1.159479260444641 3.634594289168765e-16 Z" fill="#000000" stroke="#000000" stroke-width="4" stroke-dasharray="4 4" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
const String _svg_xmzvl2 =
    '<svg viewBox="0.1 24.1 6.0 5.4" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 6.08, 29.5)" d="M 1.159479260444641 4.819563471526581e-16 L 4.973968982696533 1.184969050008918e-16 C 5.372531414031982 8.052036809920248e-17 5.695629596710205 0.3230983018875122 5.695629596710205 0.721660315990448 L 6.025007724761963 5.076980590820312 C 6.025007724761963 5.475543022155762 -7.74039485977967e-17 5.475543022155762 -3.94273686827155e-17 5.076980590820312 L 0.4378190040588379 0.721660315990448 C 0.4378190040588379 0.3230983018875122 0.7609171867370605 5.199328575845679e-16 1.159479260444641 4.819563471526581e-16 Z" fill="#000000" stroke="#000000" stroke-width="4" stroke-dasharray="4 4" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
