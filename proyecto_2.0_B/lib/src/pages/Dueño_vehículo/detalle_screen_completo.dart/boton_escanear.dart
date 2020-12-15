import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/detalle_screen_completo.dart/sprite.dart';


class BotonEscanear extends StatelessWidget {

  final double ctrl;
  final double anim;
  final Function onTap;
  final double chx;

  const BotonEscanear({Key key, this.ctrl, this.anim, this.onTap, this.chx})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Positioned(
      bottom: -(w * 0.33 + 24) * (1 - ctrl) + 24,
      left: (w - w * 0.33) / 2,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 240),
        opacity: ctrl < 0.8 ? 0 : 1,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            // width: w * 0.33,
            // height: w * 0.33,
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 240),
                  top: (w * 0.33 - 12) / 2 * (1 - chx),
                  left: 0,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 100),
                    opacity: (1 - chx),
                    child: Container(
                      // width: w * 0.33,
                      child: Text(
                        "Presiona para escanear",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.purple[50],
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 240),
                  bottom: (w * 0.33 - 18) / 2 * chx,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 100),
                    opacity: chx,
                    child: Container(
                      // width: w * 0.33,
                      child: Text(
                        "Escaneando",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.lightGreen[100],
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
                Sprite(
                  // frameWidth: w * 0.33,
                  // frameHeight: w * 0.33,
                  frame: 50,
                  anim: anim,
                  img: "assets/images/monitoreo_comp/vehicule/switch.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}