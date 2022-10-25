import Foundation


//Reto #10: EXPRESIONES EQUILIBRADAS

func checkBalanaceo(sentencia: String) -> Bool {
    
    var miArray = [String]()
    for c in sentencia {
        if c == "{" || c == "[" || c == "(" || c == "}" || c == "]" || c == ")" {
            miArray.append(String(c))
        }
    }
    
    guard miArray.count % 2 == 0 else {
        return false
    }
    print(miArray)
    
    var aux = miArray.count - 1
    for cc in 0..<miArray.count/2 {
        let c = returnCierre(delim: Character(miArray[cc]))
        if Character(miArray[aux]) != c {
            return false
        }else {
            aux -= 1
        }
    }
    
    return true
    
}

func returnCierre(delim: Character) -> Character {
    
    switch delim {
    case "{": return "}"
    case "(": return ")"
    case "[": return "]"
    default: return "|"
    }
    
}

func isBalanced(expression: String) -> Bool {

    let symbols = ["{":"}", "[":"]", "(":")"]
    var stack = [String]()

    for character in expression {
        
        let symbol = character.description;
        let containsKey = symbols.keys.contains(symbol);
        
        if containsKey || symbols.values.contains(symbol) {
            if containsKey {
                stack.append(symbol)
            } else if stack.isEmpty || symbol != symbols[stack.popLast() ?? ""] {
                return false
            }
        }
    }

    return stack.isEmpty
}


//print(checkBalanaceo(sentencia: "{ [ a * ( c + d ) ] - 5 }"))
//print(checkBalanaceo(sentencia: "{ a * ( c + d ) ] - 5 } }"))
print(isBalanced(expression: "{({})()}"))

