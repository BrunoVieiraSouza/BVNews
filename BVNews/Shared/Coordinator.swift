//
//  Coordinator.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 08/05/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController{ get set }
    var childCoordinator: [Coordinator] { get set }
    var parentCoordinator: Coordinator? { get set }
    
    func start()
    func startAsRoot()
    func add(childCoordinator coodinator: Coordinator)
    func remove(childCoordinator coodinator: Coordinator)
    func childDidFinish(_ child: Coordinator?)
}

extension Coordinator {
    func add(childCoordinator coordinator: Coordinator) {
        childCoordinator.append(coordinator)
    }
    
    func remove(childCoordinator coordinator: Coordinator) {
        childCoordinator = childCoordinator.filter({$0 !== coordinator})
    }
    
    func childDidFinish(_ child: Coordinator?) {
        if let child = child {
            remove(childCoordinator: child)
        } else {
            parentCoordinator?.childDidFinish(self)
        }
    }
    
    func startAsRoot() {}
}
