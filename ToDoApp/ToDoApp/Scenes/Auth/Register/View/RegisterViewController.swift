//
//  RegisterViewController.swift
//  ToDoApp
//
//  Created by Emir Alkal on 18.01.2023.
//

import UIKit

final class RegisterViewController: UIViewController {
    private let registerScrollView = RegisterScrollView()
    
    override func loadView() {
        super.loadView()
        view = AuthView(scrollView: registerScrollView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
