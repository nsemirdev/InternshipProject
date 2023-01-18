//
//  LoginScrollView.swift
//  ToDoApp
//
//  Created by Emir Alkal on 18.01.2023.
//

import UIKit

final class LoginScrollView: UIScrollView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
