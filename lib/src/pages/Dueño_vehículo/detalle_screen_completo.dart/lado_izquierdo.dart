import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';


class TopLayoutBg extends StatelessWidget {

  final double ctrl;
  final Function onTap;

  const TopLayoutBg({Key key, this.ctrl, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Positioned(
      top: -h * 0.13 * (1 - ctrl),
      left: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 240),
        opacity: ctrl < 0.8 ? 0 : 1,
        child: Container(
          width: w,
          height: h * 0.13,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(left: 24, right: 24, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: onTap,
                child: Container(
                  width: 36,
                  height: 36,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, size: 20),
                    color: greyLight,
                    onPressed: (){
                      Navigator.pushNamed(context, 'monitoreo');
                    },
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: greyMedium,
                      width: 2,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    "Chevrolet",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Camaro",
                    style: TextStyle(
                      color: greyLight,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 36,
                height: 36,
              ),
            ],
          ),
        ),
      ),
    );
  }
}