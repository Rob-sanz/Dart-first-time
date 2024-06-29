import 'package:flutter/material.dart';

class ContadorPantalla extends StatefulWidget {
  const ContadorPantalla({super.key});

  @override
  State<ContadorPantalla> createState() => _ContadorPantallaState();
}

class _ContadorPantallaState extends State<ContadorPantalla> {

  int contadorDeClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        backgroundColor: Colors.blueGrey[100],  //Cambia color del Drawer
      ),

      appBar: AppBar(
        title: const Text('Pantalla Contador'),
        centerTitle: true,  //Centra el titulo en appBar
        backgroundColor: Colors.blueGrey[500],  //Cambiar color del appBarr
      ),

      body: Center( child: 
        Column( mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Text('$contadorDeClicks', style: const TextStyle(fontSize: 160 , fontWeight: FontWeight.w200),),
            Text('Click${contadorDeClicks == 1 ? '' : 's' }', style: const TextStyle(fontSize:40 , fontWeight: FontWeight.w200),)
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(onPressed: (){
        contadorDeClicks++;
        setState(() {});  //Hace que el widyet se renderice cada vez que "contadorDeClicks++"
      },
      backgroundColor: Colors.blueGrey[100], //Cambia el color del button
      child: const Icon(Icons.plus_one),  //Agrega Icono al button  
      ),

    );
  }
}