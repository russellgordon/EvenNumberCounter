//
//  main.swift
//  EvenNumberCounter
//
//  Created by Russell Gordon on 2024-10-11.
//

import Foundation

// Task: Count how many even numbers there are within a range

// INPUT
let lower = 1
let upper = 15

// PROCESS
var countOfEvenNumbers = 0
for i in lower...upper {
    print(i)
    
    // Is this number even?
    if i % 2 == 0 {
        countOfEvenNumbers += 1
        print("\(i) is even")
    }
}

// OUTPUT
print("Between \(lower) and \(upper) there are \(countOfEvenNumbers) even numbers.")
