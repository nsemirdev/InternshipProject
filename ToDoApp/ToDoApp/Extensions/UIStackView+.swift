//
//  UIStackView+.swift
//  ToDoApp
//
//  Created by Emir Alkal on 18.01.2023.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ subviews: UIView...) {
        subviews.forEach {
            addArrangedSubview($0)
        }
    }
}
