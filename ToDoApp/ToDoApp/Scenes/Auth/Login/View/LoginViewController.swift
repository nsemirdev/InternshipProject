//
//  LoginViewController.swift
//  ToDoApp
//
//  Created by Emir Alkal on 18.01.2023.
//

import UIKit

final class LoginViewController: UIViewController {
        
    private let loginScrollView = LoginScrollView()
    
    override func loadView() {
        super.loadView()
        view = AuthView(scrollView: loginScrollView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
