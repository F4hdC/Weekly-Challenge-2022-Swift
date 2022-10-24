import UIKit


func contadorPalabras(frase: String) {
    
    let miArray = Array(frase.components(separatedBy: " "))
    var miArrayAux = [String]()
    
    var miSet = Set<String>()
    for array in miArray {
        if array.hasPrefix(".") || array.hasPrefix(",") {
            var aux = array
            aux.removeFirst()
            if aux.count > 0{
                miArrayAux.append(aux)
                miSet.insert(aux)
                continue
            }else {
                continue
            }
        }
        
        if array.hasSuffix(",") || array.hasSuffix(".") {
            var aux = array
            aux.removeLast()
            if aux.count > 0 {
                miArrayAux.append(aux)
                miSet.insert(aux)
                continue
            }else {
                continue
            }
        }
        miArrayAux.append(array)
        miSet.insert(array)
    }
    var miDict = [String:Int]()
    
    for word in miSet {
        miDict[word] = 0
    }
    var auxInt = 0
    for array in miArrayAux{
        if miSet.contains(array) {
            auxInt = Int(miDict[array]!)
            auxInt += 1
            miDict[array] = auxInt
            
        }
    }
    
    print(miDict)
        
}


contadorPalabras(frase: "hola F4hdC F4hdC, qué tal tió tal F4hdC.te")

