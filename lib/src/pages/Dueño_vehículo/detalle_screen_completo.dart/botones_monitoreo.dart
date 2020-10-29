import 'package:flutter/material.dart';
import 'package:proyecto/src/providers/iconos.dart';
import 'package:proyecto/src/utils/constants.dart';

class RightLayout extends StatelessWidget {

  final double ctrl;

  const RightLayout({Key key, this.ctrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Positioned(
      top: (h * 0.18 + 20),
      right: -w * ctrl,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 240),
        opacity: ctrl > 0.2 ? 0 : 1,
        child: Container(
          width: w * 0.64,
          height: h - (h * 0.3 + 20),
          alignment: Alignment.center,
          child: Wrap(
            spacing: w * 0.06,
            runSpacing: w * 0.06,
            children: wrapItems.map((e) {
              return Container(
                width: w * 0.25,
                height: h * 0.15,
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 34,
                      height: 34,
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        e.icn,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: e.icnColor,
                      ),
                    ),
                    Spacer(),
                    Text(
                      e.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: greyMedium,
                  borderRadius: BorderRadius.circular(16),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
