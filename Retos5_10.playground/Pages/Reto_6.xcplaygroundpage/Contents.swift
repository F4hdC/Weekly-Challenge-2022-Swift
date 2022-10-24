import UIKit

// Reto #6: INVIRTIENDO CADENAS

/*
 * Crea un programa que invierta el orden de una cadena de texto
 * sin usar funciones propias del lenguaje que lo hagan de forma automática.
 * - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
 */

func invertirCadenas(str1: String) -> String {
    var strInvertida = ""
    var strAux = str1
    let count = str1.count
    for _ in 0..<count{
        strInvertida.append(strAux.removeLast())
    }
    return strInvertida
}

print(invertirCadenas(str1: "Hola mundo"))

