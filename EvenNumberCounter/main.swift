//
//  main.swift
//  EvenNumberCounter
//
//  Created by Russell Gordon on 2024-10-11.
//

import Foundation

// Task: Count how many even numbers there are within a range

// FUNCTIONS
func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    
    // Loop until a valid value is provided
    while true {
        
        // Prompt the user
        print(prompt)
        
        // Collect the input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Convert to an integer
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // If a lowest value for the integer was specified...
        if let minimumValue = minimum {
            
            // ... then check that the given integer is greater than or equal to the lowest desired value.
            guard givenInteger >= minimumValue else {
                continue
            }
            
        }
        
        // If an highest possible value for the integer was specified...
        if let maximumValue = maximum {
            
            // ... then check that the given integer is less than or equal to the highest desired value.
            guard givenInteger <= maximumValue else {
                continue
            }
            
            
        }
        
        // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
        return givenInteger
        
    }
    
}

func isEven(_ number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}

// Quick tests
//print(isEven(number: 6)) // true
//print(isEven(number: 7)) // false

func countEvenNumbers(between lower: Int, and upper: Int) -> Int {
    
    var countOfEvenNumbers = 0
    
    for i in lower...upper {
//        print(i)
        
        // Is this number even?
        if isEven(i) {
            countOfEvenNumbers += 1
//            print("\(i) is even")
        }
        
    }
    
    return countOfEvenNumbers
}


// INPUT
let lowerEndOfRange = getInput(withPrompt: "What is the lower end of the range? ", minimum: 0, maximum: nil)
let upperEndOfRange = getInput(withPrompt: "What is the upper end of the range? ", minimum: lowerEndOfRange, maximum: nil)

// PROCESS
let count = countEvenNumbers(between: lowerEndOfRange, and: upperEndOfRange)

// Quick tests
//print(countEvenNumbers(between: 1, and: 5)) // 2

// OUTPUT
print("Between \(lowerEndOfRange) and \(upperEndOfRange) there are \(count) even numbers.")
