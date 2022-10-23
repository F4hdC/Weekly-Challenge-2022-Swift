import Foundation

// Reto 2, sucesión de fibonacci

/*
 * Escribe un programa que imprima los 50 primeros números de la sucesión
 * de Fibonacci empezando en 0.
 * - La serie Fibonacci se compone por una sucesión de números en
 *   la que el siguiente siempre es la suma de los dos anteriores.
 *   0, 1, 1, 2, 3, 5, 8, 13...
 */


func fibonacci(num: Int) -> [Int] {
    
    var sucesión = [Int]()
    var a = 1, b = 0, c = 0
    for _ in 0...num {
        c = b
        b = a
        a = b + c
       sucesión += [c]
    }
    return sucesión
}


print(fibonacci(num: 20))


func fibonacci_(num: Int) -> [Int] {
    
    var sucesión = [0,1]
    var ant_ant = 0, ant = 1, actual = 0
    for _ in 2...num{
        actual = ant_ant + ant
        ant_ant = ant
        ant = actual
        
        
        sucesión.append(actual)
    }
    return sucesión
}

print(fibonacci_(num: 10))
