import 'package:flutter/material.dart';

class WrapModel {

  final Color icnColor;
  final String icn;
  final String title;

  WrapModel(this.icnColor, this.icn, this.title);
}

List<WrapModel> wrapItems = [
  WrapModel(Color(0xff7670EE), 'assets/images/monitoreo_comp/vehicule/liquidos.png', 'Líquidos'),
  WrapModel(Color(0xff2EAEFB), 'assets/images/monitoreo_comp/vehicule/neumatico.png', 'Neumáticos'),
  WrapModel(Color(0xffFE7C00), 'assets/images/monitoreo_comp/vehicule/amortiguador.png', 'Amortiguadores'),
  WrapModel(Color(0xff26D670), 'assets/images/monitoreo_comp/vehicule/frenos.jpg', 'Frenos'),
  WrapModel(Color(0xffF9262C), 'assets/images/monitoreo_comp/vehicule/filtros.png', 'Filtros'),
  WrapModel(Color(0xff1CD6B2), 'assets/images/monitoreo_comp/vehicule/correa.png', 'Correa de dist'),
];

