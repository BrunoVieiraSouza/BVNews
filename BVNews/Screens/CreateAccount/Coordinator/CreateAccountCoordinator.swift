//
//  CreateAccountCoorinator.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 08/05/22.
//

import UIKit

final class CreateAccountCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var childCoordinator: [Coordinator] = []
    var parentCoordinator: Coordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        guard let createAccountVC = UIStoryboard.createAccount.instantiateViewController(withIdentifier: "CreateAccountViewController") as? CreateAccountViewController else {return}
        createAccountVC.viewModel = CreateAccountViewModel(coordinator: self)
        navigationController.pushViewController(createAccountVC, animated: true)
    }
    
    func back() {
        navigationController.popViewController(animated: true)
    }
    
    deinit {
        
    }
}
