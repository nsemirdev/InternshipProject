//
//  CustomButton.swift
//  ToDoApp
//
//  Created by Emir Alkal on 18.01.2023.
//

import UIKit

final class CustomButton: UIButton {
    
    var buttonState: Bool = false {
        didSet {
            
        }
    }
    
    override var intrinsicContentSize: CGSize {
        .init(width: 0, height: 55)
    }
    
    init(
        title: String
    ) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        setTitleColor(IPColor.actionDarkPurple, for: .normal)
        backgroundColor = IPColor.actionLightPurple
        layer.cornerRadius = 8
        isEnabled = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
