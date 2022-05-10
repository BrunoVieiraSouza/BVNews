//
//  ViewController.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 05/05/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailUser: UITextField!
    @IBOutlet weak var passwordUser: UITextField!
    var viewModel: LoginViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        navigationController?.pushViewController(TabBarControllerNews(), animated: true)
    }
    
    @IBAction func salvarSenhaSwitch(_ sender: UISwitch) {
    }
    
    @IBAction func createCount(_ sender: UIButton) {
        viewModel?.showCreateAccount()
    }
    
    deinit {

    }
    
}

