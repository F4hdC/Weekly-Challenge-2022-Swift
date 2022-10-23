import Foundation

// Reto 0 Fizz Buzz
for i in 1...5 {

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
