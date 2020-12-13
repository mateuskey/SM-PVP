import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class TopLayout extends StatefulWidget {

  final double ctrl;
  
  const TopLayout({Key key, this.ctrl}) : super(key: key);

  @override
  _TopLayoutState createState() => _TopLayoutState();
}

class _TopLayoutState extends State<TopLayout> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Positioned(
      top: 20 + -h * 0.18 * widget.ctrl,
      left: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 240),
        opacity: widget.ctrl > 0.2 ? 0 : 1,
        child: Container(
          width: w,
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          height: h * 0.18,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/monitoreo_comp/vehicule/chevy-logo.png',
                    height: 23,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Chevrolet",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.notifications,
                    size: 26,
                    color: lighTitle,
                  ),
                ],
              ),
              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  style: TextStyle(),
                  children: [
                    TextSpan(
                      text: "Detectado",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: "Escaneo por componentes",
                      style: TextStyle(
                        color: lighTitle,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(
                height: 3,
                color: lighTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}