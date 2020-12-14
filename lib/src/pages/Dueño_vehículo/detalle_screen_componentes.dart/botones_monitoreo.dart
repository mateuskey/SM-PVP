import 'package:flutter/material.dart';

class RightLayout extends StatefulWidget {

  final double ctrl;
  const RightLayout({Key key, this.ctrl}) : super(key: key);

  @override
  _RightLayoutState createState() => _RightLayoutState();
}

class _RightLayoutState extends State<RightLayout> {
  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Positioned(
      top: (h * 0.18 + 20),
      right: -w * widget.ctrl,
      child: Wrap(
        children: [
          Stack(
            children: [
              _botonLiquido(),
              _botonNeumatico(),
              _botonAmortiguadores(),
              _botonFrenos(),
              _botonFiltros(),
              _botonCorrea(),
            ],
          )
        ],  
      ),
    );
  }

  Widget _botonLiquido(){

    return Padding(
      padding: const EdgeInsets.only(right: 80.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: new Text("Líquidos"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          print("Escaneando líquidos....");
        },
        onLongPress: () {
          Navigator.pushNamed(context, 'liquidos');
        },
      ),
    );
  }

  Widget _botonNeumatico(){

    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 70.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: new Text("Neumáticos"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          print("Escaneando neumáticos....");
        },
        onLongPress: (){
          Navigator.pushNamed(context, 'neumaticos');
        },
      ),
    );
  }

  Widget _botonAmortiguadores(){

    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 145.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: new Text("Amortiguadores"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          print("Escaneando amortiguadores....");
        },
        onLongPress: (){
          Navigator.pushNamed(context, 'amortiguadores');
        },
      ),
    );
  }

  Widget _botonFrenos(){

    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 220.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: new Text("Frenos"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          print("Escaneando frenos....");
        },
        onLongPress: (){
          Navigator.pushNamed(context, 'frenos');
        },
      ),
    );
  }

  Widget _botonFiltros(){

    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 290.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: new Text("Filtros"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          print("Escaneando filtros....");
        },
        onLongPress: (){
          Navigator.pushNamed(context, 'filtros');
        },
      ),
    );
  }

  Widget _botonCorrea(){

    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 360.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: new Text("Correa de distribución"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          print("Escaneando Correa de distribución....");
        },
        onLongPress: (){
          Navigator.pushNamed(context, 'correadistr');
        },
      ),
    );
  }

  // Widget _botonanimado(){

  //   return Padding(
  //     padding: const EdgeInsets.only(right: 30.0, top: 360.0),
  //     child: AnimatedButton(
  //         onTap: () {
  //           print("animated button pressed");
  //         },
  //         animationDuration: const Duration(milliseconds: 2000),
  //         initialText: "Confirm",
  //         finalText: "Submitted",
  //         iconData: Icons.check,
  //         iconSize: 32.0,
  //         buttonStyle: ButtonStyle(
  //           primaryColor: Colors.green.shade600,
  //           secondaryColor: Colors.white,
  //           elevation: 20.0,
  //           initialTextStyle: TextStyle(
  //             fontSize: 22.0,
  //             color: Colors.white,
  //           ),
  //           finalTextStyle: TextStyle(
  //             fontSize: 22.0,
  //             color: Colors.green.shade600,
  //           ),
  //           borderRadius: 10.0,
  //         ),
  //       ),
  //   );
  // }

}

