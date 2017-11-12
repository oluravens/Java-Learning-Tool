//
//  ViewController.swift
//  hackathon
//
//  Created by Olu Roy on 11/11/17.
//  Copyright © 2017 This is a game. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var textView1: UITextView!
    

    @IBOutlet weak var submitButton: UIButton!
    //Submitted by user
    @IBAction func submitPressed(_ sender: Any){
        
        
        
        
        
        
        
        var userEnteredText: String = ""
        
        if textView1.hasText {
            
            //user has inputted at this point
            userEnteredText = textView1.text
            
            //this gets the important words from user inputs
            globalImportantArrayOfWords = getImportantWords(from: userEnteredText).0
            globalImportantArrayOfWordTypes = getImportantWords(from: userEnteredText).1
            
            
            
            print(globalImportantArrayOfWords)
            print(globalImportantArrayOfWordTypes)
            //note that for the "No text" condition, the array of words will only have "text" in it
            
            
            
            
            
            //DERIVING THE JAVA CODE IS BELOW
            
            
            //this is same no matter what user types in
            
            finalJavaCode[0] = "" //this will be used to see if the user input is recognized
            
            
            finalJavaCode[1] = "import java.util.*;"
            finalJavaCode[2] = "import java.lang.*;"
            finalJavaCode[3] = "                   "
            finalJavaCode[4] = "public class JavaLearningTool {"
            finalJavaCode[5] = "                   "
            finalJavaCode[6] = "          public static void main(String[] args) {"
            
            
            //first we need to make all the user words lowercase to make it easy to detect everything
            for i in 0..<globalImportantArrayOfWords.count {
                globalImportantArrayOfWords[i] = globalImportantArrayOfWords[i].lowercased()
            }
            
            
            //TASK 1
            //do we need a scanner or not
            for word in globalImportantArrayOfWords {
                //keywords that constitute use of a scanner
                if word == "read" || word == "get" || word == "take" {
                    finalJavaCode[7] = "                    Scanner input = new Scanner(System.in)"
                    break
                }
            }
            print(finalJavaCode[7])
            if finalJavaCode[7] != "                    Scanner input = new Scanner(System.in)"{
                
                //what line 7 becomes if there is no scanner (whitespace)
                finalJavaCode[7] = " "
                
                
                
                //ALL CODE THAT DOES NOT NEED INPUTS GOES HERE
                
                
                //TASK 4 (tasks 2 and 3 are in the else statement)
                //doing mathematical operations
                
                
                for i in 0..<globalImportantArrayOfWords.count { //this for loop iterates through all the keywords to find words associated with the desired operation
                    
                    if globalImportantArrayOfWords[i] == "sum" || globalImportantArrayOfWords[i] == "add" || globalImportantArrayOfWords[i] == "addition" || globalImportantArrayOfWords[i] == "added"{
                        
                        //addition operation detected
                        
                        let numbers: [Int] = getNumbersLessThan10(from: globalImportantArrayOfWords)
                        
                        //properly determining the line 8 string
                        var line8String = "                    System.out.println("
                        for i in 0..<numbers.count {
                            if(i != numbers.count-1) {
                                line8String = line8String + "\(numbers[i]) + "
                            } else {
                                line8String = line8String + "\(numbers[i]));"
                            }
                            
                        }
                        
                        finalJavaCode[8] = line8String
                        break
                        
                    }
                    
                    else if globalImportantArrayOfWords[i] == "subtract" || globalImportantArrayOfWords[i] == "subtracted" || globalImportantArrayOfWords[i] == "minus" {
                        
                        //subtraction operation detected
                        
                        let numbers: [Int] = getNumbersLessThan10(from: globalImportantArrayOfWords)
                        
                        //properly determining the line 8 string
                        var line8String = "                    System.out.println("
                        for i in 0..<numbers.count {
                            if(i != numbers.count-1) {
                                line8String = line8String + "\(numbers[i]) - "
                            } else {
                                line8String = line8String + "\(numbers[i]));"
                            }
                            
                        }
                        
                        finalJavaCode[8] = line8String
                        break
                    }

                    
                    else if globalImportantArrayOfWords[i] == "multiplied" || globalImportantArrayOfWords[i] == "multiply" || globalImportantArrayOfWords[i] == "times" || globalImportantArrayOfWords[i] == "multiplication"{
                        
                        //multiplication operation detected
                        
                        let numbers: [Int] = getNumbersLessThan10(from: globalImportantArrayOfWords)
                        
                        //properly determining the line 8 string
                        var line8String = "                    System.out.println("
                        for i in 0..<numbers.count {
                            if(i != numbers.count-1) {
                                line8String = line8String + "\(numbers[i]) * "
                            } else {
                                line8String = line8String + "\(numbers[i]));"
                            }
                            
                        }
                        
                        finalJavaCode[8] = line8String
                        break
                    }
                    
                    else if globalImportantArrayOfWords[i] == "divided" || globalImportantArrayOfWords[i] == "divide" || globalImportantArrayOfWords[i] == "division"{
                        
                        //division operation detected
                        
                        let numbers: [Int] = getNumbersLessThan10(from: globalImportantArrayOfWords)
                        
                        //properly determining the line 8 string
                        var line8String = "                    System.out.println("
                        for i in 0..<numbers.count {
                            if(i != numbers.count-1) {
                                line8String = line8String + "\(numbers[i]) / "
                            } else {
                                line8String = line8String + "\(numbers[i]));"
                            }
                            
                        }
                        
                        finalJavaCode[8] = line8String
                        break
                    }
                    
                    else if i==globalImportantArrayOfWords.count-1 {
                        
                        let numbers: [Int] = getNumbersLessThan10(from: globalImportantArrayOfWords)
                        
                        var line8String = "                    System.out.println(\""
                        for i in 0..<numbers.count {
                            if i == 0 {
                                line8String = line8String + "\(numbers[i]) + \" \" + "
                            } else if i==numbers.count-1 {
                                line8String = line8String + "\(numbers[i]));"
                            } else {
                                line8String = line8String + "\(numbers[i]) "
                            }
                            
                        }
                        finalJavaCode[8] = line8String
                        break
                    }
                
                
                }
                
                finalJavaCode[9] = "          }"
                finalJavaCode[10] = "}"
                
                
                
            }
            if finalJavaCode[7] == "                    Scanner input = new Scanner(System.in)" {
                //ALL CODE WITH INPUTS GOES HERE
                
                //TASK 2
                //how many input variables do we need
                var numberOfVariables = 0
                var numberOfVariablesWord = ""
                
                //this following code based on the precondition that the first number entered is the number of inputs, which it generally is
                var spotOfFirstNumber = -1;
                for i in 0..<globalImportantArrayOfWordTypes.count {
                    if globalImportantArrayOfWordTypes[i] == "Number" {
                        spotOfFirstNumber = i
                        break
                    }
                }
                
                
                if(spotOfFirstNumber != -1) {
                    
                    numberOfVariablesWord = globalImportantArrayOfWords[spotOfFirstNumber]
                    
                    
                    //turning the number of variables as a string into an integer
                    for i in 1...10 {
                        if i.asWord.lowercased() == numberOfVariablesWord {
                            numberOfVariables = i
                            break
                        }
                    }
                    
                    
                    //TASK 3
                    //update the java to match the number of input variables
                    let numberOfAdditionalLinesNeeded = numberOfVariables*2
                    print(numberOfAdditionalLinesNeeded)
                    
                    var mostRecentGlobalEnterType = ""
                    var count = 0
                    for i in 8...7+numberOfAdditionalLinesNeeded {
                        //all even number lines must prompt the user
                        
                        //var count = 0 //counter to be used as variable names
                        if i%2 == 0 {
                            var enterType = globalImportantArrayOfWords[spotOfFirstNumber+1]
                            var enterTypeToChars = Array(enterType.characters)
                            if enterTypeToChars[enterTypeToChars.count-1] == "s" { //if the noun is plural
                                enterTypeToChars.remove(at: enterTypeToChars.count-1)
                                enterType = String(enterTypeToChars)
                            }
                            
                            //enter type is now the noun that must be entered ex: number, string, integer, int
                            finalJavaCode[i] = "                    System.out.println(\"Enter a \(enterType)\")"
                            mostRecentGlobalEnterType = enterType
                        } else {
                            //all odd number lines must use the scanner to store inputs
                            
                            count = count + 1
                            if mostRecentGlobalEnterType == "number" || mostRecentGlobalEnterType == "numeral" || mostRecentGlobalEnterType == "digit" || mostRecentGlobalEnterType == "integer" || mostRecentGlobalEnterType == "int" {
                                //integer condition
                                
                                finalJavaCode[i] = "                    int \(count.asWord) = input.nextInt();"
                            } else if mostRecentGlobalEnterType == "decimal" {
                                //double condition
                                
                                finalJavaCode[i] = "                    double \(count.asWord) = input.nextDouble();"
                            } else if mostRecentGlobalEnterType == "word" || mostRecentGlobalEnterType == "string" {
                                //string condition
                                
                                finalJavaCode[i] = "                    String \(count.asWord) = input.nextLine();"
                            }
                            
                        }
                    }
                    
                    
                    
                    
                    //TASK 4
                    //show any math operations required
                    
                    
                    for i in 0..<globalImportantArrayOfWords.count { //this for loop iterates through all the keywords to find words associated with the desired operation
                        
                        if globalImportantArrayOfWords[i] == "sum" || globalImportantArrayOfWords[i] == "add" || globalImportantArrayOfWords[i] == "addition" || globalImportantArrayOfWords[i] == "added"{
                            
                            //addition operation detected
                            
                            
                            //properly determining the line string
                            var lineString = "                    System.out.println("
                            for i in 0..<count {
                                if(i != count-1) {
                                    lineString = lineString + "\((count-i).asWord) + "
                                } else {
                                    lineString = lineString + "one);"
                                }
                                
                            }
                            
                            finalJavaCode[8+numberOfAdditionalLinesNeeded] = lineString
                            break
                        }
                            
                        else if globalImportantArrayOfWords[i] == "subtract" || globalImportantArrayOfWords[i] == "subtracted" || globalImportantArrayOfWords[i] == "minus" {
                            
                            //subtraction operation detected
                            
                            //properly determining the line string
                            var lineString = "                    System.out.println("
                            for i in 0..<count {
                                if(i != count-1) {
                                    lineString = lineString + "\((count-i).asWord) - "
                                } else {
                                    lineString = lineString + "one);"
                                }
                                
                            }
                            
                            finalJavaCode[8+numberOfAdditionalLinesNeeded] = lineString
                            
                            break
                            
                        }
                            
                            
                        else if globalImportantArrayOfWords[i] == "multiplied" || globalImportantArrayOfWords[i] == "multiply" || globalImportantArrayOfWords[i] == "times" || globalImportantArrayOfWords[i] == "multiplication"{
                            
                            //multiplication operation detected
                            
                            //properly determining the line string
                            var lineString = "                    System.out.println("
                            for i in 0..<count {
                                if(i != count-1) {
                                    lineString = lineString + "\((count-i).asWord) + "
                                } else {
                                    lineString = lineString + "one);"
                                }
                                
                            }
                            
                            finalJavaCode[8+numberOfAdditionalLinesNeeded] = lineString
                            break
                        }
                            
                        else if globalImportantArrayOfWords[i] == "divided" || globalImportantArrayOfWords[i] == "divide" {
                            
                            //division operation detected
                            
                            //properly determining the line string
                            var lineString = "                    System.out.println("
                            for i in 0..<count {
                                if(i != count-1) {
                                    lineString = lineString + "\((count-i).asWord) + "
                                } else {
                                    lineString = lineString + "one);"
                                }
                                
                            }
                            
                            finalJavaCode[8+numberOfAdditionalLinesNeeded] = lineString
                            break
                        }
                        
                        else if i==globalImportantArrayOfWords.count-1{
                            
                            var lineString = "                    System.out.println(\""
                            for i in 0..<count {
                                if i == 0 {
                                    lineString = lineString + "\((count-i).asWord) + \" \" + "
                                } else if i==count-1 {
                                    lineString = lineString + "one);"
                                } else {
                                    lineString = lineString + "\((count-i).asWord) "
                                }
                                
                            }
                            finalJavaCode[8+numberOfAdditionalLinesNeeded] = lineString
                            
                            break

                        }
                        
                        
                    }
                    
                    finalJavaCode[9+numberOfAdditionalLinesNeeded] = "          }"
                    finalJavaCode[10+numberOfAdditionalLinesNeeded] = "}"
                    
                    
                    
                    
                    
                }
                
                
            }
            
            
            componentArray = Array(finalJavaCode.keys)
            componentArrayValues = Array(finalJavaCode.values)
            
            for i in 0..<componentArray.count {
                print(finalJavaCode[i])
                
                if let javaCodeLine = finalJavaCode[i] {
                    componentArrayValues[i] = javaCodeLine
                }
                
            }
            
            
        } else {
            let normalColor = submitButton.tintColor
            submitButton.tintColor = UIColor.red
            
            //this is a brief color animation so the user understands they cannot not submit text
            delayWithSeconds(0.7) {
                self.submitButton.tintColor = normalColor
            }
        }
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for i in 0..<componentArrayValues.count {
            componentArrayValues[i] = ""
        }
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}





