//
//  CreateAccountViewModel.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 08/05/22.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class CreateAccountViewModel {
    
    weak var coordinator: CreateAccountCoordinator?
   
    
    init() {
        
    }
    
    func createUser(nome: String, email: String, senha: String) {
        
        let user = UserNew(nameFull: nome, email: email, password: senha, passwordConfirmation: senha)
        
        autenticationUser(user: user)
    }
    
    func autenticationUser(user: UserNew) {
        
        let autenticacao = Auth.auth()
        let usernovo = user
        autenticacao.createUser(withEmail: user.email, password: user.password) { result, error in
            if error == nil {
                if result == nil {
                    
                } else {
                    
                    let dataBase = Database.database().reference()
                    let usuarios = dataBase.child("usuarios")
                    let usuariosCadastrados = ["nome": user.nameFull, "email": user.email]
                    
                    usuarios.child((result!.user.uid)).setValue(usuariosCadastrados)
                    print("usuario cadastrado com sucesso")
                }
            } else {
                print("erro ooooooooooo")
            }
        }
        
        
    }
    
    deinit {
        coordinator?.childDidFinish(nil)
    }
}
