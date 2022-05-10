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
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
