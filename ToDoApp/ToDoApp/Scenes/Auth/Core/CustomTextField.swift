//
//  CustomTextField.swift
//  ToDoApp
//
//  Created by Emir Alkal on 18.01.2023.
//

import UIKit

final class CustomTextField: UITextField {
    
    override var intrinsicContentSize: CGSize {
        .init(width: 0, height: 33)
    }
    
    init(
        placeholder: String
    ) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        layer.borderWidth = 1
        layer.borderColor = IPColor.borderGray.cgColor
        layer.cornerRadius = 8
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        CGRectInset(bounds, 18, 0)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        CGRectInset(bounds, 18, 7)
    }

    override var alignmentRectInsets: UIEdgeInsets {
        .init(top: 0, left: 8, bottom: 25, right: 8)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
}
