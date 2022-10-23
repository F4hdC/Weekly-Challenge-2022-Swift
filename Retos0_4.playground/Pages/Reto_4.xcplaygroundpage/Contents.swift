import Foundation

/*
 * Crea una única función (importante que sólo sea una) que sea capaz
 * de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 */


protocol Poligono {
    func calcularArea() -> Double
    func printArea()
}


struct Cuadrado: Poligono {
    let lado: Double
    func calcularArea() -> Double {
        return lado * lado
    }
    func printArea() {
        print(String(format: "El área de un Cuadrado es : %.2f" ,calcularArea()))
    }
}

struct rectángulo: Poligono {
    let h: Double, w: Double
    func calcularArea() -> Double {
        return h * w
    }
    func printArea() {
        print(String(format: "El área de un rectángulo es : %.2f" ,calcularArea()))
    }
    
}

struct Triangulo: Poligono {
    let h:Double, w: Double
    func calcularArea() -> Double {
        return (h * w) / 2
    }
    
    func printArea() {
        print(String(format: "El área de un triangulo es : %.2f" ,calcularArea()))
    }
    
}


func area(poligono: Poligono) {
    poligono.printArea()
}

area(poligono: Cuadrado(lado: 5))
area(poligono: Triangulo(h: 3.1, w: 2.1))
area(poligono: rectángulo(h: 5.0, w: 5.1))
