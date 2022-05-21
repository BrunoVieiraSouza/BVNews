//
//  CreateCountViewControllerViewController.swift
//  BVNews
//
//  Created by Bruno Vieira Souza on 05/05/22.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var passwordConfirmation: UITextField!
    
    
    var viewModel: CreateAccountViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func createAccountBT(_ sender: UIButton) {
        
        guard let email = email.text, let fullName = fullName.text, let password = password.text, let confirmarSenha = passwordConfirmation.text else {return}
        
        viewModel?.createUser(nome: fullName, email: email, senha: password, confirmarSenha: confirmarSenha)
    }
    
    deinit {
    }
}
