//
//  UserNew.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 10/05/22.
//

import Foundation

struct UserNew {
    
    var nameFull: String
    var email: String
    var password: String
    var passwordConfirmation: String
    
    func Conferesenha() -> String? {
        if password == passwordConfirmation {
            return password
        } else {
            return nil
        }
    }
    
}
