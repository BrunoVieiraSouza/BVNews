//
//  LoginViemModel.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 08/05/22.
//

import Foundation

typealias LoginProtocol = Coordinator & ShowCreateAccountProtocol & ShowAreaLogadaProtocol

class LoginViewModel {
    
    weak private var coordinator: LoginProtocol?
    
    init(coordinator: LoginCoordinator) {
        self.coordinator = coordinator
    }
    
    func showCreateAccount(){
        coordinator?.showCreateAccountView()
    }
    
    func showAreaLogada() {
        coordinator?.showAreaLogada()
    }
    
    deinit {
       
    }
}
