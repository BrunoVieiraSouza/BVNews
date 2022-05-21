//
//  SearchNewsCoordinator.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 10/05/22.
//

import UIKit

class SearchNewsCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var childCoordinator: [Coordinator] = []
    var parentCoordinator: Coordinator?
    
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
