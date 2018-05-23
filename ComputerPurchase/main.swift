//
//  main.swift
//  ComputerPurchase
//
import Foundation

// INPUT
var specs = 0
while true {
    
    print("How many specs will be provided?")
    guard let input = readLine() else{
        continue
    }
    guard let intInput = Int(input) else {
        continue
    }
    if intInput < 0 || intInput > 10 {
        continue
    }
    specs = intInput
    break
}

// PROCESS
var firstComputerSpecs = 0
var firstComputerNames = ""
// Collect the list of computer specs here
for counter in 1...specs{
    
    // Ask user for the specs for a given computer
    print("Spec \(counter)?")

    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    
    
    let splitInput = givenInput.split(separator: " ")
  
    let computerName = String(splitInput[0])
    
    let computerRAM = Int(splitInput[1])
    
    let computerCPU = Int(splitInput[2])
    
    let computerDiskSpace = Int(splitInput[3])
    
    let specResult = 2 * computerRAM! + 3 * computerCPU! + computerDiskSpace!
    
    if specResult > firstComputerSpecs {
        firstComputerSpecs = specResult
       firstComputerNames = computerName
    }
    
}
