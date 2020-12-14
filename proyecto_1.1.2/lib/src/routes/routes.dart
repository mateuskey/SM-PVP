import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/Informaci%C3%B3n%20veh%C3%ADculo/control_por_componente.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/Informaci%C3%B3n%20veh%C3%ADculo/control_vehiculo.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/Informaci%C3%B3n%20veh%C3%ADculo/historial_comp_page.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/Informaci%C3%B3n%20veh%C3%ADculo/resultado_amortiguadores.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/Informaci%C3%B3n%20veh%C3%ADculo/resultado_correa.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/Informaci%C3%B3n%20veh%C3%ADculo/resultado_filtros.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/Informaci%C3%B3n%20veh%C3%ADculo/resultado_frenos.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/Informaci%C3%B3n%20veh%C3%ADculo/resultado_liquidos.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/Informaci%C3%B3n%20veh%C3%ADculo/resultado_neumatico.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/autoayuda_page.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/detalle_screen_completo.dart/monitoreo_completo.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/detalle_screen_completo.dart/monitoreo_completo_charge.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/detalle_screen_componentes.dart/amortiguadores_page.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/detalle_screen_componentes.dart/correadistribuci%C3%B3n_page.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/detalle_screen_componentes.dart/filtros_page.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/detalle_screen_componentes.dart/frenos_page.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/detalle_screen_componentes.dart/liquidos_page.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/detalle_screen_componentes.dart/neumaticos_page.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/detalle_screen_componentes.dart/por_componentes.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/Informaci%C3%B3n%20veh%C3%ADculo/informaci%C3%B3n_page.dart';

import 'package:proyecto/src/pages/crear_cuenta_page.dart';
import 'package:proyecto/src/pages/Dueño_vehículo/home_dueno.dart';
import 'package:proyecto/src/pages//login_dueno_vehiculo.dart';
import 'package:proyecto/src/pages/Dueño_vehículo/monitoreo_veh%C3%ADculo_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{ 

    'login': (BuildContext context)             => LoginDuenoVehiculo(),
    'cuenta': (BuildContext context)            => CrearCuentaPage(),
    'home': (BuildContext context)              => HomePageDueno(),
    'monitoreo': (BuildContext context)         => MonitoreoPage(),
    'porcomponentes': (BuildContext context)    => DetallePorcomponentes(),
    'completo': (BuildContext context)          => CompletoPage(),
    'cargada': (BuildContext context)           => CompletoCargadaPage(),
    'liquidos': (BuildContext context)          => LiquidosPage(),
    'neumaticos': (BuildContext context)        => NeumaticosPage(),
    'amortiguadores': (BuildContext context)    => AmortiguadoresPage(),
    'frenos': (BuildContext context)            => FrenosPage(),
    'filtros': (BuildContext context)           => FiltrosPage(),
    'correadistr': (BuildContext context)       => CorreaDistribucionPage(),
    'información': (BuildContext context)       => InfoPage(),
    'controlvehiculo': (BuildContext context)   => ControlVehiculoPage(),
    'controlcomp': (BuildContext context)       => ControlComponentesPage(),
    'autoayuda': (BuildContext context)         => AutoayudaPage(),
    'resultadoliq': (BuildContext context)      => ResultadoLiquidos(),
    'resultadoneu': (BuildContext context)      => ResultadoNeumaticos(),
    'resultadoamorti': (BuildContext context)   => ResultadoAmortiguadores(),
    'resultadofrenos': (BuildContext context)   => ResultadoFrenos(),
    'resultadofiltros': (BuildContext context)  => ResultadoFiltros(),
    'resultadocorrea': (BuildContext context)   => ResultadoCorreaDistribucion(),
    'historial': (BuildContext context)         => Historial(),
  };
}