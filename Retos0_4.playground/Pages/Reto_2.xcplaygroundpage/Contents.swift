import Foundation

// Reto 1 números primos


func esPrimo(num: Int) -> Bool {
    
    guard num > 1 else {
        return false
    }
    
    for i in 2..<num {
        if num % i != 0 {
            
        }else {
            return false
        }
    }
    return true
}

for i in 1...100{
    print(esPrimo(num: i) ? "\(i) " : "", terminator: "")
}
