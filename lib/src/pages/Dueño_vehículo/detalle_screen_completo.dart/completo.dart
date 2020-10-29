import 'package:flutter/material.dart';
import 'package:proyecto/src/models/opciones_model.dart';
import 'package:proyecto/src/utils/constants.dart';

import 'botones_monitoreo.dart';
import 'lado_derecho_top.dart';
import 'lado_izquierdo.dart';


class DetalleCompleto extends StatefulWidget {

  final OpcMonitoreo opcMonitoreo;
  const DetalleCompleto({Key key, this.opcMonitoreo}) : super(key: key);

  @override
  _DetalleCompletoState createState() => _DetalleCompletoState();
}

class _DetalleCompletoState extends State<DetalleCompleto> with TickerProviderStateMixin{

  AnimationController _controller;
  AnimationController _switchCtrl;
  Animation<int> anim;

  double get w => MediaQuery.of(context).size.width;
  double get h => MediaQuery.of(context).size.height;

  double chx = 0;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600))
          ..addListener(() {
            setState(() {});
          });
    _switchCtrl =
        AnimationController(vsync: this, duration: Duration(milliseconds: 6000))
          ..addListener(() {
            setState(() {});
          });
    anim = StepTween(begin: 0, end: 49).animate(_switchCtrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragUpdate: _onHorizontalDragUpdate,
        onHorizontalDragEnd: _onHorizontalDragEnd,
        behavior: HitTestBehavior.translucent,
        child: Container(
          width: w,
          height: h,
          child: Stack(
            children: [
              _fondoapp(),
              TopLayout(
                ctrl: _controller.value,
              ),
              TopLayoutBg(
                ctrl: _controller.value,
                onTap: _toggle,
              ),
              RightLayout(
                ctrl: _controller.value,
              ),
              Positioned(
                top: h * 0.11 + h * 0.07 * (1 - _controller.value) + 20,
                left: -w * 0.43 * (1 - _controller.value),
                child: Container(
                  width: w,
                  height: h - (h * 0.3 + 20),
                  child: Stack(
                    children: [
                      Container(
                        width: w,
                        height: h - (h * 0.3 + 20),
                        padding:
                            EdgeInsets.all(52 + 10 * (1 - _controller.value)),
                        child: Image.asset('assets/images/monitoreo_comp/vehicule/chevy.png'),
                      ),
                    ],
                  ),
                ),
              ),
              // SwitchButton(
              //   ctrl: _controller.value,
              //   anim: anim.value.toDouble(),
              //   chx: chx,
              //   onTap: () {
              //     if (_switchCtrl.isAnimating) {
              //       _switchCtrl.reset();
              //       setState(() {
              //         chx = 0;
              //       });
              //     } else {
              //       _switchCtrl.repeat();
              //       setState(() {
              //         chx = 1;
              //       });
              //     }
              //   },
              // ),
            ],
          ),
        ),
      )
    );
  }

  Widget _fondoapp() {

    return Scaffold(
      backgroundColor: primaryTextColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.8),
              end: FractionalOffset(0.0, 2.0),
              colors: [
                Color.fromRGBO(5, 70, 101, 1.0),
                Color.fromRGBO(5, 37, 57, 1.0)
              ]),
        ),
      ),
    );
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    _controller.value += details.primaryDelta / w;
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    if (_controller.isAnimating ||
        _controller.status == AnimationStatus.completed) return;

    _controller.fling(velocity: _controller.value < 0.5 ? -1.0 : 1.0);
  }

  void _toggle() {
    final bool isOpen = _controller.status == AnimationStatus.completed;

    _controller.fling(velocity: isOpen ? -1 : 1);
  }


}