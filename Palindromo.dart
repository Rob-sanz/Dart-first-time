//Programa que recibe un String y comprueba si es un palindormo
//(ignorando espacios y mayúsculas/minúsculas).

void main(){

  String strOriginal = 'La ruta nos aporto otro paso natural';
  String strPalindromo='';    //Variable a la cual meteremos String invertido
  
  //Quitar los espacion del String
  String strSinEspacios = strOriginal.replaceAll(' ','');

  //Poner todo en minusculas
  String strminusculas = strSinEspacios.toLowerCase();
  //Usar .toUpperCase(). para convertir en mayusculas mayusculas 

  //Encontrar el tamaño del String
  final n = strminusculas.length;

  for(int i=1 ; i<=n ; i++){

    String a = '';
    a = strminusculas[n-i];
    strPalindromo += a;
  }

  //Compramos si es un palindromo
  if(strminusculas == strPalindromo ){
    print("El texto ==> $strOriginal <== SI es un Palindromo");
  }
  else{
    print("El texto ==> $strOriginal <== NO es un Palindromo");
  }

  //Para revisar visualmente utilice esto y compare.
  /* 
  print(strminusculas);
  print(trsPalindromo);
  */

}

