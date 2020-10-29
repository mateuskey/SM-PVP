import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Completo extends StatelessWidget {
  
  Completo({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xf8ffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-29.0, 166.0),
            child:
                // Adobe XD layer: 'chevrolet_camaro_20…' (shape)
                Container(
              width: 404.0,
              height: 171.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(25.0, 298.0),
            child:
                // Adobe XD layer: 'Cuadro inferior' (group)
                SizedBox(
              width: 310.0,
              height: 342.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 310.0, 342.0),
                    size: Size(310.0, 342.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Cuadro completo' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 310.0, 342.0),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(34.4, 278.4, 251.6, 56.0),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Cuadro Contacto' (group)
                              PageLink(
                            links: [
                              PageLinkInfo(
                                transition: LinkTransition.SlideRight,
                                ease: Curves.easeOut,
                                duration: 0.3,
                                // pageBuilder: () => Completocontacto(),
                              ),
                            ],
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 251.6, 56.0),
                                  size: Size(251.6, 56.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.0),
                                      color: const Color(0xff161513),
                                    ),
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds:
                                      Rect.fromLTWH(23.6, 10.6, 211.0, 33.0),
                                  size: Size(251.6, 56.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  fixedHeight: true,
                                  child: Text(
                                    'Contacto servicio',
                                    style: TextStyle(
                                      fontFamily: 'Times New Roman',
                                      fontSize: 30,
                                      color: const Color(0xffffffff),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(48.0, 248.0, 260.0, 15.0),
                          size: Size(310.0, 342.0),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Porcentaje 6' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 260.0, 15.0),
                                size: Size(260.0, 15.0),
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 180.0, 15.0),
                                size: Size(260.0, 15.0),
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
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(45.0, 211.0, 260.0, 15.0),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Porcentaje 5' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 260.0, 15.0),
                                size: Size(260.0, 15.0),
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 118.0, 15.0),
                                size: Size(260.0, 15.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color: const Color(0xff161513),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(45.0, 174.0, 260.0, 15.0),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Porcentaje 4' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 260.0, 15.0),
                                size: Size(260.0, 15.0),
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 118.0, 15.0),
                                size: Size(260.0, 15.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color: const Color(0xff161513),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(45.0, 137.0, 260.0, 15.0),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Porcentaje 3' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 260.0, 15.0),
                                size: Size(260.0, 15.0),
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 239.0, 15.0),
                                size: Size(260.0, 15.0),
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
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(45.0, 100.0, 260.0, 15.0),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Porcentaje 2' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 260.0, 15.0),
                                size: Size(260.0, 15.0),
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 150.0, 15.0),
                                size: Size(260.0, 15.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color: const Color(0xff161513),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(45.0, 63.0, 260.0, 15.0),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Porcentaje 1' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 260.0, 15.0),
                                size: Size(260.0, 15.0),
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 209.0, 15.0),
                                size: Size(260.0, 15.0),
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
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(30.0, 25.0, 164.5, 22.0),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Primeras figuras' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(85.5, 0.0, 79.0, 22.0),
                                size: Size(164.5, 22.0),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  'Chevrolet',
                                  style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontSize: 20,
                                    color: const Color(0xff161513),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.0, 67.0, 20.0),
                                size: Size(164.5, 22.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  'Detected',
                                  style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontSize: 18,
                                    color: const Color(0x80000000),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(7.0, 170.6, 37.9, 24.4),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Frenos' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 37.9, 24.4),
                                size: Size(37.9, 24.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Depositphotos_29272…' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: const AssetImage(''),
                                      fit: BoxFit.cover,
                                    ),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xff707070)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 11.4, 37.9, 13.0),
                                size: Size(37.9, 24.4),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                // child:
                                    // Adobe XD layer: 'Rectangle ' (component)
                                    // Rectangle(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.2, 10.4, 30.0, 11.0),
                                size: Size(37.9, 24.4),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Text(
                                  'Frenos',
                                  style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontSize: 10,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.0, 208.0, 38.0, 24.0),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Filtros' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 24.0),
                                size: Size(38.0, 24.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'tipos-filtro-de-ace…' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: const AssetImage(''),
                                      fit: BoxFit.cover,
                                    ),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xff707070)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 11.0, 38.0, 13.0),
                                size: Size(38.0, 24.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                // child:
                                //     // Adobe XD layer: 'Rectangle ' (component)
                                //     Rectangle(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(4.0, 10.0, 30.0, 12.0),
                                size: Size(38.0, 24.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Text(
                                  'Filtros',
                                  style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontSize: 11,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                    height: 1.4545454545454546,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(9.0, 243.0, 37.0, 23.0),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Correa de distribuc…' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 37.0, 23.0),
                                size: Size(37.0, 23.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'cambiar-la-correa-d…' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: const AssetImage(''),
                                      fit: BoxFit.cover,
                                    ),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xff707070)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 10.0, 37.0, 13.0),
                                size: Size(37.0, 23.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                // child:
                                //     // Adobe XD layer: 'Rectangle ' (component)
                                //     Rectangle(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(2.0, 15.0, 30.0, 4.0),
                                size: Size(37.0, 23.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Text(
                                  'Correa de distribución',
                                  style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontSize: 3,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                    height: 1.6666666666666667,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(7.0, 132.0, 38.0, 24.0),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Amortiguadores' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 24.0),
                                size: Size(38.0, 24.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'amortiguadores' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: const AssetImage(''),
                                      fit: BoxFit.cover,
                                    ),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xff707070)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 11.0, 38.0, 13.0),
                                size: Size(38.0, 24.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                // child:
                                //     // Adobe XD layer: 'Rectangle ' (component)
                                //     Rectangle(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(1.0, 14.0, 34.0, 5.0),
                                size: Size(38.0, 24.0),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child: Text(
                                  'Amortiguadores',
                                  style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontSize: 5,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(7.3, 94.6, 37.7, 24.4),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Neumáticos' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 37.7, 24.4),
                                size: Size(37.7, 24.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'michelin-primacy-3-…' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: const AssetImage(''),
                                      fit: BoxFit.cover,
                                    ),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xff707070)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 11.4, 37.7, 13.0),
                                size: Size(37.7, 24.4),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Rectangle ' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff537bd0),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.8, 13.4, 34.0, 8.0),
                                size: Size(37.7, 24.4),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Text(
                                  'Neumáticos',
                                  style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontSize: 7,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                    height: 1.4285714285714286,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.9, 59.6, 38.0, 23.7),
                          size: Size(310.0, 342.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Líquidos' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.4, 0.0, 37.1, 23.7),
                                size: Size(38.0, 23.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'aceite-motor-lubric…' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: const AssetImage(''),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.4, 10.7, 37.1, 13.0),
                                size: Size(38.0, 23.7),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Rectangle ' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff537bd0),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 9.7, 38.0, 11.0),
                                size: Size(38.0, 23.7),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Text(
                                  'Líquidos',
                                  style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontSize: 10,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(19.5, 69.0),
            child:
                // Adobe XD layer: 'Segundo Cuadro' (group)
                SizedBox(
              width: 296.0,
              height: 84.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 296.0, 84.0),
                    size: Size(296.0, 84.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Segundo cuadro' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 14.0, 21.0, 1.0),
                          size: Size(296.0, 84.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_4gxgh9,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 3.5, 10.5, 21.0),
                          size: Size(296.0, 84.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_kzgd3k,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(36.0, 0.0, 260.0, 84.0),
                          size: Size(296.0, 84.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          // child:
                          //     // Adobe XD layer: 'Crear cuenta' (component)
                          //     Bienvenida(),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 3.5, 21.0, 21.0),
                    size: Size(296.0, 84.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Segundo cuadro' (group)
                        PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          // pageBuilder: () => Monitoreovehculo(),
                        ),
                      ],
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 21.0, 21.0),
                            size: Size(21.0, 21.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child:
                                // Adobe XD layer: 'Flecha' (group)
                                Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 10.5, 21.0, 1.0),
                                  size: Size(21.0, 21.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  fixedHeight: true,
                                  child: SvgPicture.string(
                                    _svg_4gxgh9,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 10.5, 21.0),
                                  size: Size(21.0, 21.0),
                                  pinLeft: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child: SvgPicture.string(
                                    _svg_kzgd3k,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Adobe XD layer: 'Primer cuadro super…' (component)
          SizedBox(
            width: 371.0,
            height: 30.0,
            // child: Primercuadrosuperior(),
          ),
        ],
      ),
    );
  }
}

const String _svg_4gxgh9 =
    '<svg viewBox="7.5 18.0 21.0 1.0" ><path  d="M 28.5 18 L 7.5 18" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_kzgd3k =
    '<svg viewBox="7.5 7.5 10.5 21.0" ><path  d="M 18 28.5 L 7.5 18 L 18 7.5" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
