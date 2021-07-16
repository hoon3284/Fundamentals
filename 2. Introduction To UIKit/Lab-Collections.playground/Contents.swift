import UIKit

//// Arrays
//var names: [String] = ["Anne", "Gary", "Keith"]
//var names2 = ["Anne", "Gary", "Keith"]
//var numbers = [1, -3, 50, 72, -95, 115]
//var numbersInt8: [Int8] = [1, -3, 50, 72, -95, 115] // from -128 to 127
//let numbersConstant = [4, 5, 6]
//if numbersConstant.contains(5) {
//    print("There is a 5")
//}
//
//// Array Types
//var myArray: [Int] = []
//var myArray2: Array<Int> = []
//var myArray3 = [Int]()

// Working With Arrays
var myArray = [Int](repeating: 0, count: 100)
let count = myArray.count
if myArray.isEmpty {}

//let firstName = names[0]
//names[1] = "Paul"
var names = ["Amy"]
names.append("Joe")
names += ["Keith", "Jane"]
print(names)
names.insert("Bob", at: 0)
var names2 = ["Amy", "Brad", "Chelsea", "Dan"]
let chelsea = names.remove(at: 2)
let dan = names2.removeLast()
names.removeAll()
let array1 = [1, 2, 3]
let array2 = [4, 5, 6]
let containerArray = [array1, array2]
let firstArray = containerArray[0]
let secondArray = containerArray[1]
var myNewArray = firstArray + secondArray
let firstElement = containerArray[0][0]

// Dictionaries
// [key1: value1, key2: value2, key3: value3]
var scores = ["Richard": 500, "Luke": 400, "Cheryl": 800]
var myDictionary = [String: Int]()
var myDictionary2 = Dictionary<String, Int>()
var myDictionary3: [String: Int] = [:]

// Add/Remove/Modify A Dictionary
scores["Oli"] = 399
let oldValue = scores.updateValue(100, forKey: "Richard")
if let oldValue = scores.updateValue(100, forKey: "Richard") {
    print("Richard's old Value was \(oldValue)")
}
scores["Richard"] = nil
print(scores)
if let removedValue = scores.removeValue(forKey: "Luke") {
    print("Luke's score was \(removedValue) before he stopped playing")
}

// Accessing A Dictionary
var newScores = ["Richard": 500, "Luke": 400, "Cheryl": 800]
let players = Array(newScores.keys)
let points = Array(newScores.values)
if let lukesScore = newScores["Luke"] {
    print(lukesScore)
}
if let henrysScore = newScores["Henry"] {
    print(henrysScore)
    // not executed; "Henry" is not a key in the dictionary
}

// Loops
// For Loops
for index in 1...5 {
    print("This is number \(index)")
}
for _ in 1...3 {
    print("Hello")
}
let namesForLoops = ["Joseph", "Cathy", "Winston"]
for name in namesForLoops {
    print("Hello \(name)")
}
for letter in "ABCD" {
    print("The letter is \(letter)")
}
for (index, letter) in "ABCD".enumerated() {
    print("\(index): \(letter)")
}
let animals = ["Lion", "Tiger", "Bear"]
for index in 0..<animals.count {
    print("\(index): \(animals[index])")
}
let vehicles = ["unicycle": 1, "bicycle": 2, "tricycle": 3, "quad bike": 4]
for (vehicleName, wheelCount) in vehicles {
    print("A \(vehicleName) has \(wheelCount) wheels")
}

// While Loops
var numberOfLives = 3
//while numberOfLives > 0 {
//    print("I still have \(numberOfLives) lives.")
//}

//var numberOfLives = 3
var stillAlive = true
while stillAlive {
    numberOfLives -= 1
    if numberOfLives == 0 {
        stillAlive = false
    }
}
var steps = 0
let wall = 2
repeat {
    print("Step")
    steps += 1
    if steps == wall {
        print("You've hit a wall!")
        break
    }
} while steps < 10

// Control Transfer Statement
// Prints -3 through 0
for counter in -3...3 {
    print(counter)
    if counter == 0 {
        break
    }
}

