//
//  LoginCoordinator.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 08/05/22.
//

import Foundation
import UIKit

protocol ShowCreateAccountProtocol: AnyObject {
    func showCreateAccountView()
    func logarApp()
}

final class LoginCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var childCoordinator: [Coordinator] = []
    var parentCoordinator: Coordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        guard let loginVC = UIStoryboard.login.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController else {return}
        
        let viewModel = LoginViewModel(coordinator: self)
        loginVC.viewModel = viewModel
        navigationController.pushViewController(loginVC, animated: false)
    }
}

extension LoginCoordinator: ShowCreateAccountProtocol {
    func showCreateAccountView() {
        let childCoordinator = CreateAccountCoordinator(navigationController: navigationController)
        add(childCoordinator: childCoordinator)
        childCoordinator.parentCoordinator = self
        childCoordinator.start()
    }
    
    func logarApp() {
        
    }
    
}
