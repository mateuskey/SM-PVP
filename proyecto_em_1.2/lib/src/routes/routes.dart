import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/Autoayuda/Ayuda_modelo_page.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/Autoayuda/Notificacion_page.dart';
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
import 'package:proyecto/src/pages/Duen%CC%83o_vehi%CC%81culo/login_dueno_vehiculo.dart';

import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/crear_cuenta_page.dart';
import 'package:proyecto/src/pages/Dueño_vehículo/home_dueno.dart';
import 'package:proyecto/src/pages/Dueño_vehículo/monitoreo_veh%C3%ADculo_page.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/Sistema_OBDII/sistema_obdII_page.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/home_servicio.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/login%20servicio_page.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/verificar_veh%C3%ADculo.dart/documento_control/Notificaci%C3%B3n_DV_page.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/verificar_veh%C3%ADculo.dart/documento_control/documentacion_vehicule1.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/verificar_veh%C3%ADculo.dart/documento_control/documentacion_vehicule2.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/verificar_veh%C3%ADculo.dart/documento_control/documentacion_vehicule3.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/verificar_veh%C3%ADculo.dart/documento_control/documento_control_page1.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/verificar_veh%C3%ADculo.dart/documento_control/documento_control_page2.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/verificar_veh%C3%ADculo.dart/documento_control/documento_control_page3.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/verificar_veh%C3%ADculo.dart/documento_control/monitoreo_historial1_page.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/verificar_veh%C3%ADculo.dart/documento_control/monitoreo_historial2_page.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/verificar_veh%C3%ADculo.dart/documento_control/monitoreo_historial3_page.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/verificar_veh%C3%ADculo.dart/verificar_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{

    'login': (BuildContext context)                 => LoginDuenoVehiculo(),
    'cuenta': (BuildContext context)                => CrearCuentaPage(),
    'homedueno': (BuildContext context)             => HomePageDueno(),
    'monitoreo': (BuildContext context)             => MonitoreoPage(),
    'porcomponentes': (BuildContext context)        => DetallePorcomponentes(),
    'completo': (BuildContext context)              => CompletoPage(),
    'cargada': (BuildContext context)               => CompletoCargadaPage(),
    'liquidos': (BuildContext context)              => LiquidosPage(),
    'neumaticos': (BuildContext context)            => NeumaticosPage(),
    'amortiguadores': (BuildContext context)        => AmortiguadoresPage(),
    'frenos': (BuildContext context)                => FrenosPage(),
    'filtros': (BuildContext context)               => FiltrosPage(),
    'correadistr': (BuildContext context)           => CorreaDistribucionPage(),
    'información': (BuildContext context)           => InfoPage(),
    'controlvehiculo': (BuildContext context)       => ControlVehiculoPage(),
    'controlcomp': (BuildContext context)           => ControlComponentesPage(),
    'autoayuda': (BuildContext context)             => AutoayudaPage(),
    'resultadoliq': (BuildContext context)          => ResultadoLiquidos(),
    'resultadoneu': (BuildContext context)          => ResultadoNeumaticos(),
    'resultadoamorti': (BuildContext context)       => ResultadoAmortiguadores(),
    'resultadofrenos': (BuildContext context)       => ResultadoFrenos(),
    'resultadofiltros': (BuildContext context)      => ResultadoFiltros(),
    'resultadocorrea': (BuildContext context)       => ResultadoCorreaDistribucion(),
    'historial': (BuildContext context)             => Historial(),
    'notificacion': (BuildContext context)          => NotificacionPage(),
    'ayudamodelo': (BuildContext context)           => AyudaModeloPage(),
    'loginserv': (BuildContext context)             => LoginServicioAutomotriz(),
    'homeservicio': (BuildContext context)          => HomePageServicio(),
    'verificar': (BuildContext context)             => Verificarpage(),
    'documento_control1': (BuildContext context)    => DocumentoControlPage1(),
    'documento_control2': (BuildContext context)    => DocumentoControlPage2(),
    'documento_control3': (BuildContext context)    => DocumentoControlPage3(),
    'ControlVehiculoPage1': (BuildContext context)  => ControlVehiculoPage1(),
    'ControlVehiculoPage2': (BuildContext context)  => ControlVehiculoPage2(),
    'ControlVehiculoPage3': (BuildContext context)  => ControlVehiculoPage3(),
    'notificacióncontrol': (BuildContext context)   => NotificacionaDuenoPage(),
    'docvehiculo1': (BuildContext context)          => DocumentacionVehicule1(),
    'docvehiculo2': (BuildContext context)          => DocumentacionVehicule2(),
    'docvehiculo3': (BuildContext context)          => DocumentacionVehicule3(),
    'sistemaOBDII': (BuildContext context)          => SistemaObdIIpage(),
  
  };
}
