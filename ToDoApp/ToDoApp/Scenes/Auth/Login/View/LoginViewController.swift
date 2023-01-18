//
//  LoginViewController.swift
//  ToDoApp
//
//  Created by Emir Alkal on 18.01.2023.
//

import UIKit

final class LoginViewController: UIViewController {
        
    private let screenBounds = UIScreen.main.bounds
    private let loginScrollView = LoginScrollView()
    
    override func loadView() {
        super.loadView()
        view = AuthView(scrollView: loginScrollView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNotifications()
    }
}

// MARK: - Keyboard

extension LoginViewController {
    
    private func setUpNotifications() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow(_ :)),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide(_ :)),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        loginScrollView.contentSize = .init(width: screenBounds.width, height: screenBounds.height + 400)
    }
    
    @objc func keyboardWillHide(_ notification: Notification) {
        loginScrollView.contentSize = .init(width: screenBounds.width, height: screenBounds.height)
    }
}
