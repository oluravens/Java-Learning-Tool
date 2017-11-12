//
//  InterpretationMethod.swift
//  hackathon
//
//  Created by Olu Roy on 11/11/17.
//  Copyright © 2017 This is a game. All rights reserved.
//

import Foundation

var globalImportantArrayOfWords: [String] = [""]

var globalImportantArrayOfWordTypes: [String] = [""]

var componentArray: [Int] = []

var componentArrayValues: [String] = []

func getImportantWords(from inputString: String) -> ([String], [String]) {
    
    var importantArrayOfWords: [String] = []
    var importantArrayOfWordTypes: [String] = []
    
    let options: NSLinguisticTagger.Options = [.omitWhitespace, .omitPunctuation]
    
    let schemes = NSLinguisticTagger.availableTagSchemes(forLanguage: "en")
    
    let tagger = NSLinguisticTagger(tagSchemes: schemes, options: Int(options.rawValue))
    
    tagger.string = inputString
    
    tagger.enumerateTags(in: NSMakeRange(0, (inputString as NSString).length), scheme: NSLinguisticTagSchemeNameTypeOrLexicalClass, options: options) { (tag, tokenRange, _, _) in
        
        let token = (inputString as NSString).substring(with: tokenRange)
        
        if(tag == "Noun" || tag == "Verb" || tag == "Number") {
            importantArrayOfWords.append(token)
            importantArrayOfWordTypes.append(tag)
        }
    }
    
    return (importantArrayOfWords, importantArrayOfWordTypes)
}











