import 'package:flutter/material.dart';

class WrapModel {
  final Color icnColor;
  final String icn;
  final String title;

  WrapModel(this.icnColor, this.icn, this.title);
}

List<WrapModel> wrapItems = [
  WrapModel(Color(0xff7670EE), 'assets/images/monitoreo_comp/vehicule/play.png', 'Media'),
  WrapModel(Color(0xff2EAEFB), 'assets/images/monitoreo_comp/vehicule/thermometer.png', 'Climate'),
  WrapModel(Color(0xffFE7C00), 'assets/images/monitoreo_comp/vehicule/compass.png', 'Location'),
  WrapModel(Color(0xff26D670), 'assets/images/monitoreo_comp/vehicule/technology.png', 'Charging'),
  WrapModel(Color(0xffF9262C), 'assets/images/monitoreo_comp/vehicule/transportation.png', 'Controls'),
  WrapModel(Color(0xff1CD6B2), 'assets/images/monitoreo_comp/vehicule/sports.png', 'Summon'),
];