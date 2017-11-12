//
//  SecondLevelInterp.swift
//  hackathon
//
//  Created by Olu Roy on 11/11/17.
//  Copyright © 2017 This is a game. All rights reserved.
//

import Foundation

var finalJavaCode: [Int: String] = [:] //this will have a code line and then the actual words in that line



//We are now able to take integers and print them as words, will be used for java code derivation
public extension Int {
    public var asWord: String {
        let numberValue = NSNumber(value: self)
        var formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        return formatter.string(from: numberValue)!
    }
}


//This is a function to create delay
func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
        completion()
    }
}


func getNumbersLessThan10(from array: [String]) -> [Int]{
    var toBeReturned: [Int] = []
    
    for f in 0..<array.count {
        for i in 1...10 {
            if i.asWord.lowercased() == array[f] {
                toBeReturned.append(i)
            }
        }
    }
    
    
    return toBeReturned
}
















