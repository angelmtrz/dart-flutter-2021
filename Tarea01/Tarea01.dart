void main() {
  //1. Numero mayor
  int nMayor = numeroMayor(35, 105, 5);
  print("Ejercicio 1");
  print("El numero mayor es: $nMayor");
  print("-------------------------------------------");
  //2. Calculadora con 2 operadores
  int opSuma = operacion(5, 56, suma);
  print("Ejercicio 2");
  print("El resultado de la Suma es : $opSuma");
  int opResta = operacion(5, 6, resta);
  print("El resultado de la Resta es : $opResta");
  int opMultiplicacion = operacion(5, 5, multiplicacion);
  print("El resultado de la Multiplicacón es : $opMultiplicacion");
  double opDivision = operacion(6, -70, division);
  print("El resultado de la División es : $opDivision");
  //2. Calculadora con lista de operadores
  opSuma = operacionLista([3, 5, 2, 6], sumaLista);
  print("El resultado de la Suma de lista es : $opSuma");
  opResta = operacionLista([86, 45, 33, -7, 0, 12], restaLista);
  print("El resultado de la Resta de lista es : $opResta");
  opMultiplicacion = operacionLista([1, 2, 3, 4, 5], multiplicacionLista);
  print("El resultado de la Multiplicacón de lista es : $opMultiplicacion");
  opDivision = operacionLista([60, 2, 3, 5], divisionLista);
  print("El resultado de la División de lista es : $opDivision");
  print("-------------------------------------------");
  //3. Recorrer Lista
  print("Ejercicio 3");
  recorreListaAnimales();
  print("-------------------------------------------");
  //4. Combinar listas
  print("Ejercicio 4");
  combinarListas();
  print("-------------------------------------------");
  //5. Imprimir Lista de String
  List<String> lista = [
    "Soy",
    "una",
    "lista",
    "de",
    "String",
    "Ejercicio",
    "5"
  ];
  print("Ejercicio 5");
  imprimirLista(lista);
  print("-------------------------------------------");
  //6. Imprimir Listas con Argumentos
  print("Ejercicio 6");
  List<String> listaFrutas = ["Papaya", "Sandía", "Manzana", "Fresa"];
  List<int> listaNotas = [12, 10, 8, 15, 18];
  imprimirConArgumentos(listaInt: listaNotas, listaString: listaFrutas);
  print("-------------------------------------------");
  //7. Retorna lista
  print("Ejercicio 7");
  print(retornarListaString("Este es un texto de prueba aprendiendo Dart"));
  print("-------------------------------------------");
  print("Ejercicio 8");
  Auto objAuto1 = new Auto("Mazda", "RX8", 2019, false);
  print(objAuto1.mostrarInfo());
  print("-------------------------------------------");
}

/*
1.- Crear un programa con 3 variables enteros e identificar cual es el mayor, usar IF, ELSEIF, ELSE
*/
int numeroMayor(int num1, int num2, int num3) {
  int mayor = 0;

  if (num1 > num2) {
    if (num1 > num3) {
      mayor = num1;
    } else {
      mayor = num3;
    }
  } else if (num2 > num3) {
    mayor = num2;
  } else {
    mayor = num3;
  }

  return mayor;
}

/*
2.- Crear una calculadora (suma, resta, multiplicación, división), usar funciones 
*/
dynamic operacion(int num1, int num2, Function op) {
  return op(num1, num2);
}

dynamic operacionLista(List<int> numeros, Function op) {
  return op(numeros);
}

int suma(int num1, int num2) {
  return num1 + num2;
}

int sumaLista(List<int> numeros) {
  int resultado = numeros.reduce((value, element) => value + element);
  return resultado;
}

int resta(int num1, int num2) {
  return num1 - num2;
}

int restaLista(List<int> numeros) {
  int resultado = numeros.reduce((value, element) => value - element);
  return resultado;
}

int multiplicacion(int num1, int num2) {
  return num1 * num2;
}

int multiplicacionLista(List<int> numeros) {
  int resultado = numeros.reduce((value, element) => value * element);
  return resultado;
}

double division(int num1, int num2) {
  if (num2 == 0) {
    return 0;
  } else {
    return num1 / num2;
  }
}

double divisionLista(List<int> numeros) {
  var numerosD = numeros.map((numero) => numero.toDouble()).toList();
  double resultado =
      numerosD.reduce((anterior, siguiente) => anterior / siguiente);
  return resultado;
}

// 3.- Recorrer los siguientes valores y mostrarlo en un print List<String> animals = ['Perro', 'Gato', 'Ratón'];
//usar forEach y función de flecha
void recorreListaAnimales() {
  List<String> animals = ['Perro', 'Gato', 'Ratón'];
  animals.forEach((elemento) {
    print(elemento);
  });
}

//4.- Combiar las siguientes listas y mostrarlo en un print
//List<String> animales = ['Conejo', 'Gato'];
//List<String> mascotas = ['Tortuga', 'Perro'];
//como resultado debe mostrar: [Conejo, Gato, Tortuga, Perro]
void combinarListas() {
  List<String> animales = ['Conejo', 'Gato'];
  List<String> mascotas = ['Tortuga', 'Perro'];
  List<String> listaCombinada = [...animales, ...mascotas];
  print(listaCombinada);
}

//5.- Crear una función y como parámetro me permita recibir una
//lista de String (pintar los valores)
void imprimirLista(List<String> lista) {
  lista.forEach((elemento) {
    print(elemento);
  });
}

//6.- Crear una función con argumentos con Nombre,
//como parámetros reciba una lista de String y
//otra lista de Enteros (pintar los valores)
void imprimirConArgumentos(
    {required List<String> listaString, required List<int> listaInt}) {
  print("Elementos String:");
  listaString.forEach((elemStr) {
    print(elemStr);
  });
  print("\nElementos int:");
  listaInt.forEach((elemInt) {
    print(elemInt);
  });
}

//7.- Crear una función que me retorne una Lista de String
List<String> retornarListaString(String texto) {
  List<String> listaResultado = texto.split(" ");
  return listaResultado;
}

//8.- Crear una clase con 3 propiedades y mencionarlos en su constructor
class Auto {
  String? marca;
  String? modelo;
  int? anioFabricacion;
  bool? fullEquipo;

  Auto(String marca, String modelo, int anioFabricacion, bool fullEquipo) {
    this.marca = marca;
    this.modelo = modelo;
    this.anioFabricacion = anioFabricacion;
    this.fullEquipo = fullEquipo;
  }

  String mostrarInfo() {
    String info = "Auto $marca $modelo, fabricado el año $anioFabricacion";
    return info;
  }
}
