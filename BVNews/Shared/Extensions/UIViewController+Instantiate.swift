//
//  UIViewController+Instantiate.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 08/05/22.
//

import Foundation
import UIKit

extension UIViewController {
    
    static var login: UIStoryboard {
        return UIStoryboard.init(name: "Login", bundle: nil)
    }
    
    static var createAccount: UIStoryboard {
        return UIStoryboard.init(name: "CreateAccount", bundle: nil)
    }
}

extension UITabBarController {
    static var homeNews: UIStoryboard {
        return UIStoryboard.init(name: "HomeNews", bundle: nil)
    }
    
    static var searchNews: UIStoryboard {
        return UIStoryboard.init(name: "SearchNews", bundle: nil)
    }
}
