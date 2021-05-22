//
//  CaesarCipherEncryptor.swift
//  AlgorithmsExpert
//
//  Created by ramil on 22.05.2021.
//

import Foundation

class CaesarCipherEncryptor {
    
    func solutionOne(string: String, key: UInt32) -> String {
        var newLetters = [Character]()
        let newKey = key % 26
        
        for letter in string {
            newLetters.append(getNewLetterOne(letter, newKey))
        }
        return String(newLetters)
    }
    
    func solutionTwo(string: String, key: UInt32) -> String {
        var newLetter = [Character]()
        let newKey = key % 26
        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
        for letter in string {
            newLetter.append(getNewLetterTwo(letter, newKey, alphabet))
        }
        return String(newLetter)
    }
    
    private func getNewLetterOne(_ letter: Character, _ key: UInt32) -> Character {
        let newLetterCode = letter.unicodeScalars.first!.value + key
        let code: UnicodeScalar?
        if newLetterCode <= 122 {
            code = UnicodeScalar(newLetterCode)
        } else {
            code = UnicodeScalar(96 + newLetterCode % 122)
        }
        return Character(code!)
    }
    
    private func getNewLetterTwo(_ letter: Character, _ key: UInt32, _ alphabet: [Character]) -> Character {
        let newLetterCode = alphabet.firstIndex(of: letter)! + Int(key)
        if newLetterCode <= 25 {
            return alphabet[newLetterCode]
        } else {
            return alphabet[-1 + newLetterCode % 25]
        }
    }
}
