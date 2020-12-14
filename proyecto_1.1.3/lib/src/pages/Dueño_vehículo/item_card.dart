import 'package:flutter/material.dart';
import 'package:proyecto/src/models/opciones_model.dart';

class ItemCard extends StatelessWidget {

  final OpcMonitoreo opcMonitoreo;
  final Function press;
  const ItemCard({
    Key key, this.opcMonitoreo, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 110.0),
              child: Container(
                // height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color: opcMonitoreo.color,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    alignment: Alignment(-.2, 0),
                    image: AssetImage(opcMonitoreo.image),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 50.0),
                  child: Text(
                    opcMonitoreo.title,
                    style: TextStyle(
                        fontFamily: 'Times new roman',
                        color: Colors.yellowAccent,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}