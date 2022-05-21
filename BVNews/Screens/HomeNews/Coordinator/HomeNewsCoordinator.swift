//
//  HomeNewsCoordinator.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 10/05/22.
//

import Foundation
import UIKit

class HomeNewsCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var childCoordinator: [Coordinator] = []
    var parentCoordinator: Coordinator?
    var instanteVCHome: UIViewController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        guard let homeVC = UIStoryboard.homeNews.instantiateViewController(withIdentifier: "HomeNewsViewController") as? HomeNewsViewController else {return}
        homeVC.viewModel = HomeNewsViewModel()
        homeVC.viewModel?.coordinator = self
        navigationController.pushViewController(homeVC, animated: true)
    }
}
