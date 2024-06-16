
  //Crea una clase llamada Auto que tenga como atributo: (Color, Marca, Modelo, placas) y crea 
  //metodos para acelerar y frenar, toda instancia de auto debe inilializarce en detenido

void main(){

  //crear Auto
  final auto01 = Auto(color: 'Rojo', marca: 'Nissan', modelo: 'Frontier', anio: 2020, placas: 'HDP-2065');
  
  //imprimir 
  auto01.imprimir();
  
  //Probar metodo acelerar e imprimir cambios
  auto01.acelerar();
  auto01.imprimir();

  //acelerar mientras esta en marcha
  auto01.acelerar();
  auto01.imprimir();
  
  //detener auto e imprimir
  auto01.frenar();
  auto01.imprimir();

}

class Auto{

  //atributos
  late String color;
  late String modelo;
  late String marca;
  late String placas;
  late int anio; 
  bool estado = false; //false para detenido, true para en marcha

  //Contructor
  Auto({
    required this.color,
    required this.marca, 
    required this.modelo, 
    required this.anio,
    required this.placas
    }){}

  //Metodos

  //metodo para acelerar
  void acelerar(){

    if(estado == false){
      estado = true;
      print('El auto ahora esta en marcha');
    }
    else{
      print('El auto ya esta en marcha');
    }
  }

  void frenar(){
    if(estado == true){
      estado = false;
      print('El auto ahora esta estacionado');
    }
    else{
      print('El auto ya esta estacionado');
    }
  }

  void imprimir(){
    print('//////////AUTO////////');
    print('// Color: $color');
    print('// Marca: $marca');
    print('// Modelo: $modelo');
    print('// Año: $anio');
    print('// Placas: $placas');
    if(estado == true){
      print('// Estado: En Marcha');
    }
    else{
      print('// Estado: Detenido');
    }
    print('/////////////////////');
  }
}
