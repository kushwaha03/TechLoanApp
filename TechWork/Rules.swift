//
//  Rules.swift
//  TechWork
//
//  Created by kashee kushwaha on 25/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import Foundation

class Rules {
    static func validateEmail(_ name: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: name)
    }
    
    static func validatePhone(_ name: String) -> Bool {
//        let phoneRegex = "^\\+\\d{1,3}\\d{10}$"
        let phoneRegex = "^\\d{10}$"
        return NSPredicate(format: "SELF MATCHES %@", phoneRegex).evaluate(with: name)
    }
    
    static func validatePassword(_ name:String)->Bool {
        let passwordRegex = "^.{6,}$"//"^(?=.*?[a-z]).{6,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: name)
    }

    static func validateUsername(name:String) -> Bool {
        let nameRegex = "[A-Za-z]{1}[A-Za-z0-9]{2,14}"//"^[a-zA-Z0-9]{3,16}$"
        return NSPredicate(format: "SELF MATCHES %@", nameRegex).evaluate(with: name)
    }
    
    static func validateOtp(_ name:String) -> Bool {
        let otpRegex = "^\\d{4}$"
        return NSPredicate(format: "SELF MATCHES %@", otpRegex).evaluate(with: name)
    }
}
