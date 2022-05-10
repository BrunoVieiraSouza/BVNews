//
//  TabBar.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 09/05/22.
//


import UIKit

class TabBarControllerNews: UITabBarController {

    override func viewWillAppear(_ animated: Bool) {
        
        guard let homeVC = UIStoryboard.homeNews.instantiateViewController(withIdentifier: "HomeNewsViewController") as? HomeNewsViewController else {return}
        let HomeNewsViewController = homeVC
        let homeNewsNavigationController = UINavigationController(rootViewController: HomeNewsViewController)
        let homeNewsTabBar = UITabBarItem(title: "News", image: UIImage(named: "house.fill"), tag: 0)
        homeNewsNavigationController.tabBarItem = homeNewsTabBar

        
        guard let searchVC = UIStoryboard.searchNews.instantiateViewController(withIdentifier: "SearchNewsViewController") as? SearchNewsViewController else {return}
        let SearchNewsViewController = searchVC
        let searchNewsNavigationController = UINavigationController(rootViewController: SearchNewsViewController)
        let searchsTabBar = UITabBarItem(title: "Pesquisar", image: UIImage(named: "heart.circle.fill"), tag: 1)
        searchNewsNavigationController.tabBarItem = searchsTabBar

        self.viewControllers = [homeNewsNavigationController, searchNewsNavigationController]
    }
}
