import 'dart:ui';

import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class CompletoCargadaPage extends StatefulWidget {
  @override
  _CompletoCargadaPageState createState() => _CompletoCargadaPageState();
}

class _CompletoCargadaPageState extends State<CompletoCargadaPage> {
  @override
  Widget build(BuildContext context) {

    // final arg = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: Text('Sistema monitoreo PVP', style: TextStyle(fontFamily: 'Times new roman',)),
        backgroundColor: gradientStartColor,
      ),
      body: Stack(
        children: [
          // Text(arg),
          _fondoapp(),
          _texto(),
          _porcentaje1(),
          _liquido(),
          _neumaticos(),
          _porcentaje2(),
          _amortiguadores(),
          _porcentaje3(),
          _frenos(),
          _porcentaje4(),
          _filtros(),
          _porcentaje5(),
          _correadeDistribucion(),
          _porcentaje6(),
        ],
      ),
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

  Widget _texto(){

    return Container(
      padding: const EdgeInsets.only(top: 80.0),
      alignment: Alignment.topCenter,
      child: Text('Monitoreo completo',
        style: TextStyle(
          fontFamily: 'Times new roman',
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _liquido(){

    return Container(
      padding: const EdgeInsets.only(top: 150.0, right: 250.0),
      alignment: Alignment.topCenter,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Líquidos",
            ),
            
            WidgetSpan(
              child: Image.asset('assets/images/monitoreo_comp/vehicule/liquidos.png', cacheHeight: 25)
            ),
          ],
        ),
      ),
    );
  }

  Widget _porcentaje1(){
  // Adobe XD layer: 'Porcentaje 1' (group)
  return Padding(
    padding: const EdgeInsets.only(left: 140.0, top: 155.0,bottom: 155.0, right:220.0),
    child: Stack(
      children: <Widget>[
        
        Padding(
          padding: const EdgeInsets.only(left: 0.0, bottom: 350.0),
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 0.0, 209.0, 15.0),
            size: Size(20.0, 80.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xffebebeb),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 350.0),
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 0.0, 220.0, 15.0),
            size: Size(120.0, 80.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xff161513),
              ),
            ),
          ),
        ),
      ],
    ),
  );

}

  Widget _neumaticos(){

    return Container(
      padding: const EdgeInsets.only(top:220.0, right: 250.0),
      alignment: Alignment.topCenter,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Neumaticos",
            ),
            
            WidgetSpan(
              child: Image.asset('assets/images/monitoreo_comp/vehicule/neumatico.png', cacheHeight: 25)
            ),
          ],
        ),
      ),
    );
  }

  Widget _porcentaje2(){
  // Adobe XD layer: 'Porcentaje 1' (group)
  return Padding(
    padding: const EdgeInsets.only(left: 140.0, top: 155.0,bottom: 155.0, right: 220.0),
    child: Stack(
      children: <Widget>[
        
        Padding(
          padding: const EdgeInsets.only(left: 0.0, bottom: 350.0),
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 70.0, 209.0, 15.0),
            size: Size(20.0, 80.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xffebebeb),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 350.0),
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 70.0, 270.0, 15.0),
            size: Size(120.0, 80.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xff161513),
              ),
            ),
          ),
        ),
      ],
    ),
  );

}

  Widget _amortiguadores(){

    return Container(
      padding: const EdgeInsets.only(top: 290.0, right: 260.0),
      alignment: Alignment.topCenter,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Amortiguadores",
            ),
            
            WidgetSpan(
              child: Image.asset('assets/images/monitoreo_comp/vehicule/amortiguador.png', cacheHeight: 25)
            ),
          ],
        ),
      ),
    );
  }

  Widget _porcentaje3(){
  // Adobe XD layer: 'Porcentaje 1' (group)
  return Padding(
    padding: const EdgeInsets.only(left: 140.0, top: 155.0,bottom: 155.0, right: 220.0),
    child: Stack(
      children: <Widget>[
        
        Padding(
          padding: const EdgeInsets.only(left: 0.0, bottom: 350.0),
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 140.0, 209.0, 15.0),
            size: Size(20.0, 80.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xffebebeb),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 350.0),
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 140.0, 300.0, 15.0),
            size: Size(120.0, 80.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xff161513),
              ),
            ),
          ),
        ),
      ],
    ),
  );

}

  Widget _frenos(){

    return Container(
      padding: const EdgeInsets.only(top: 360.0, right: 250.0),
      alignment: Alignment.topCenter,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Frenos",
            ),
            
            WidgetSpan(
              child: Image.asset('assets/images/monitoreo_comp/vehicule/frenos.png', cacheHeight: 25)
            ),
          ],
        ),
      ),
    );
  }

  Widget _porcentaje4(){
  // Adobe XD layer: 'Porcentaje 1' (group)
  return Padding(
    padding: const EdgeInsets.only(left: 140.0, top: 155.0,bottom: 155.0, right: 220.0),
    child: Stack(
      children: <Widget>[
        
        Padding(
          padding: const EdgeInsets.only(left: 0.0, bottom: 350.0),
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 210.0, 209.0, 15.0),
            size: Size(20.0, 80.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xffebebeb),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 350.0),
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 210.0, 200.0, 15.0),
            size: Size(120.0, 80.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xff161513),
              ),
            ),
          ),
        ),
      ],
    ),
  );

}

  Widget _filtros(){

    return Container(
      padding: const EdgeInsets.only(top: 430.0, right: 250.0),
      alignment: Alignment.topCenter,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Filtros",
            ),
            
            WidgetSpan(
              child: Image.asset('assets/images/monitoreo_comp/vehicule/filtros.png', cacheHeight: 25)
            ),
          ],
        ),
      ),
    );
  }

  Widget _porcentaje5(){
  // Adobe XD layer: 'Porcentaje 1' (group)
  return Padding(
    padding: const EdgeInsets.only(left: 140.0, top: 155.0,bottom: 155.0, right: 220.0),
    child: Stack(
      children: <Widget>[
        
        Padding(
          padding: const EdgeInsets.only(left: 0.0, bottom: 350.0),
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 280.0, 209.0, 15.0),
            size: Size(20.0, 80.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xffebebeb),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 350.0),
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 280.0, 190.0, 15.0),
            size: Size(120.0, 80.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xff161513),
              ),
            ),
          ),
        ),
      ],
    ),
  );

}

  Widget _correadeDistribucion(){

    return Container(
      padding: const EdgeInsets.only(top: 500.0, right: 250.0),
      alignment: Alignment.topCenter,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Distribucion",
            ),
            
            WidgetSpan(
              child: Image.asset('assets/images/monitoreo_comp/vehicule/correa.png', cacheHeight: 25)
            ),
          ],
        ),
      ),
    );
  }

  Widget _porcentaje6(){
  // Adobe XD layer: 'Porcentaje 1' (group)
  return Padding(
    padding: const EdgeInsets.only(left: 140.0, top: 155.0,bottom: 155.0, right: 220.0),
    child: Stack(
      children: <Widget>[
        
        Padding(
          padding: const EdgeInsets.only(left: 0.0, bottom: 350.0),
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 350.0, 209.0, 15.0),
            size: Size(20.0, 80.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xffebebeb),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 350.0),
          child: Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 350.0, 240.0, 15.0),
            size: Size(120.0, 80.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xff161513),
              ),
            ),
          ),
        ),
      ],
    ),
  );

}

  
}