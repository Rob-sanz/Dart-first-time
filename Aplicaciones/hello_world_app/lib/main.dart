import 'package:flutter/material.dart';
import 'package:hello_world_app/presentacion/Pantallas/contadores/contador_pantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primer App',
      debugShowCheckedModeBanner: false,  //Quita el "Debug" de la esquina superior derecha de la App
      theme: ThemeData( 
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
        ),
      home : const ContadorPantalla() //Llama a otra clase (Pantalla, Scaffold) creada

    );
  }

}