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
    
    init(coordinator: CreateAccountCoordinator) {
        self.coordinator = coordinator
    }
    
    func createUser(nome: String, email: String, senha: String, confirmarSenha: String) {
        
        let user = UserNew(nameFull: nome, email: email, password: senha, passwordConfirmation: confirmarSenha)
        autenticationUser(user: user)
    }
    
    private func autenticationUser(user: UserNew) {
        
        if user.nameFull != "" {
            if user.password == user.passwordConfirmation {
                
                let autenticacao = Auth.auth()
                autenticacao.createUser(withEmail: user.email, password: user.password) { result, error in
                    
                    if error == nil {
                        if result == nil {
                            print("Resultad na criacao do usuario retornou nil, verifique o que houve")
                        } else {
                            let dataBase = Database.database().reference()
                            let usuarios = dataBase.child("usuarios")
                            let usuarioCadastrado = ["nome": user.nameFull, "email": user.email]
                            usuarios.child(result!.user.uid).setValue(usuarioCadastrado)
                        }
                    } else {
                        let error = error! as NSError
                        
                        if let codigoError = error.userInfo["FIRAuthErrorUserInfoNameKey"] {
                            let errorText = codigoError as! String
                            var mensagemError = ""
                            
                            switch errorText {
                            case "ERROR_INVALID_EMAIL" :
                                mensagemError = "E-mail invalido, digite um e-mail valido"
                                break
                            case "ERROR_WEAK_PASSWORD" :
                                mensagemError = "Escolha uma senha no minimo de 6 caracteres"
                                break
                            case "ERROR_EMAIL_ALREADY_IN_USE" :
                                mensagemError = "E-mail já cadastrado!"
                                break
                            default:
                                mensagemError = "Dados incorretos"
                            }
                            print(mensagemError)
                        }
                    }
                }
            } else {
                print("As senhas digitadas nao conferem uma a outra")
            }
            
        } else {
            print("nome complete esta em branco")
        }
    }
    
    deinit {
        coordinator?.childDidFinish(nil)
    }
}
