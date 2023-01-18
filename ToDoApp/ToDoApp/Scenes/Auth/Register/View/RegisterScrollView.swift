//
//  RegisterScrollView.swift
//  ToDoApp
//
//  Created by Emir Alkal on 18.01.2023.
//

import UIKit

final class RegisterScrollView: UIScrollView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
