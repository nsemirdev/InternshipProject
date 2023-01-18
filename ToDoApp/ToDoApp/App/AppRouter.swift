//
//  AppRouter.swift
//  ToDoApp
//
//  Created by Emir Alkal on 18.01.2023.
//

import UIKit

final class AppRouter {
    
    var window: UIWindow?
    
    func start(_ scene: UIScene) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        
        window?.rootViewController = LoginViewController()
    }
}
