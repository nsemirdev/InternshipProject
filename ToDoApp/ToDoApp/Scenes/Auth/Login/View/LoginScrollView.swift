//
//  LoginScrollView.swift
//  ToDoApp
//
//  Created by Emir Alkal on 18.01.2023.
//

import UIKit

final class LoginScrollView: UIScrollView {
    
    private let overallStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.layer.borderColor = UIColor.secondaryLabel.cgColor
        stackView.layer.borderWidth = 1
        stackView.alignment = .center
        stackView.axis = .vertical
        return stackView
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = IPColor.textPrimary
        label.font = Fonts.title1
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentSize = UIScreen.main.bounds.size
        addSubview(overallStackView)

        overallStackView.frame = .init(
            x: 24,
            y: 96,
            width: contentSize.width - 48,
            height: contentSize.height - 140
        )
        
        setUpStackView()
    }
    
    private func setUpStackView() {
        overallStackView.addArrangedSubview(loginLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
