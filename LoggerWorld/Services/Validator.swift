//
//  Validator.swift
//  LoggerWorld
//
//  Created by Anatolii Bogdanov on 16.11.2020.
//

import Foundation

struct Validator {
    static let classNames = ["WARRIOR", "ARCHER", "ASSASIN", "WIZARD"]
    
    static func validEmail(for email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    static func passwordIsStrong(for password: String) -> Bool {
        let passwordRegex = "^(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8}$"
        
        let passwordPred = NSPredicate(format:"SELF MATCHES %@", passwordRegex)
        return passwordPred.evaluate(with: password)
    }
    
    static func nicknameIsValid(for nickname: String) -> Bool {
        let regex = "^[0-9a-zA-Z\\_]{5,18}$"
        let pred = NSPredicate(format:"SELF MATCHES %@", regex)
        return pred.evaluate(with: nickname)
    }
    
    static func classNameIsValid(for name: String) -> Bool {
        return classNames.contains(name)
    }
}
