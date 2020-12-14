import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/autoayuda_page.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/detalle_screen_completo.dart/completo.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/informaci%C3%B3n_page.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/monitoreo_completo.dart';

import 'package:proyecto/src/pages/crear_cuenta_page.dart';
import 'package:proyecto/src/pages/Dueño_vehículo/home_dueno.dart';
import 'package:proyecto/src/pages//login_dueno_vehiculo.dart';
import 'package:proyecto/src/pages/Dueño_vehículo/monitoreo_veh%C3%ADculo_page.dart';
import 'package:proyecto/src/pages/Dueño_vehículo/por_componentes_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{
    'login': (BuildContext context)         => LoginDuenoVehiculo(),
    'cuenta': (BuildContext context)        => CrearCuentaPage(),
    'home': (BuildContext context)          => HomePageDueno(),
    'monitoreo': (BuildContext context)     => MonitoreoPage(),
    'componentes': (BuildContext context)   => ComponentesPage(),
    'información':(BuildContext context)    => InfoPage(),
    'autoayuda':(BuildContext context)      => AutoayudaPage(),
    'completo':(BuildContext context)       => DetalleCompleto(),
  };
}