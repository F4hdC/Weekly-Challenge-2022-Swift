import UIKit


// Reto 0 Fizz Buzz

for i in 1...1 {
    
    if i % 3 == 0 && i % 5 == 0 {
        print("fizzbuzz, \(i)")
    } else if i % 3 == 0 {
        print("fizz, \(i)")
    }else if i % 5 == 0 {
        print("buzz, \(i)")
    }
    else {
        print(i)
    }
    
}

// Reto 1, ¿Es un anagrama?  Ej tren, rent is true rent contiene tren

func comprobarAnagrama(_ str1: String,_ str2: String) -> Bool {
    guard str1.count <= str2.count else {
        return false
    }
    
    guard str1 != str2 else {
        return false
    }
    // de esta forma no vamos iterando por cada carácter
    for i in str1.sorted() {
        if str2.sorted().contains(where: { $0 == i }) {
            return true
        }
    }
    return false
}

print(comprobarAnagrama("hola", "latahona"),"\n") // True { son Anagrama } else { no lo son }

var title = "hola"
var countries = ["estonia", "france", "germany"]
var cc = ["madrid", "morocco", "germany"]
var aux = countries
var aux1 = ["","",""]



func auxSufle() {
    //countries.shuffle()
    aux = countries.shuffled()
    print("au1: ",aux1)
    print("aux: ",aux[0...2])
    while aux[0] == aux1[0]{
        aux = countries.shuffled()
    }
    print("aux: ",aux[0...2],"\n")
    aux1[0...2] = aux[0...2]
    
}



//
//for _ in 0..<20 {
//    auxSufle()
//}
