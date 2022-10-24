import UIKit

// Reto 8

func decToBin(decimal: Int) -> String {
    var miBin = ""
    var dec = decimal
    
    while dec >= 1 {
        dec % 2 == 0 ? (miBin += "0") : (miBin += "1")
        dec = dec / 2
    }
    return String(Array(miBin).reversed())
}

// Reto puesto por mi para resolver de binario a Decimal
func binToDec(binario: Int) -> Int {
    var bin = "\(binario)"
    var dec = 0
    var aux = bin.count-1
    
    for i in bin {
        if let intValue = Int("\(i)"){
            dec += power(2, Double(aux)) * intValue
            aux -= 1
        }
    }
    return dec
}


func power(_ x:Double,_ p:Double) -> Int {
    return Int(pow(x, p))
}
let numTest = 100

print(decToBin(decimal: numTest))
print(binToDec(binario: Int(decToBin(decimal: numTest))!))
