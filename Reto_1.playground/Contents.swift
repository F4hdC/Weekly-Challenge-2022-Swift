import UIKit

// Reto 1, ¿Es un anagrama?  Ej tren, rent is true rent contiene tren

func comprobarAnagrama(_ str1: String,_ str2: String) -> Bool {
    guard str1.count == str2.count else {
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

print(comprobarAnagrama("hola", "laho"),"\n") // True { son Anagrama } else { no lo son }
