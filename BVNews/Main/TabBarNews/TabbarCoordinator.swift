//
//  TabbarCoordinator.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 11/05/22.
//

import Foundation
import UIKit

class TabbarCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var childCoordinator: [Coordinator] = []
    var parentCoordinator: Coordinator?
    
    init(navigation: UINavigationController) {
        self.navigationController = navigation
    }
    
    func start() {
        TabBarControllerNews.setUpTabbar()
    }
}
