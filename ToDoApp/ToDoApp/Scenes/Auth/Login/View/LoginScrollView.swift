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
//        stackView.layer.borderColor = UIColor.secondaryLabel.cgColor
//        stackView.layer.borderWidth = 1
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.spacing = 24
        return stackView
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textAlignment = .center
        label.textColor = IPColor.textPrimary
        label.font = Fonts.title1
        return label
    }()
    
    private let detailLabel: UILabel = {
        let label = UILabel()
        label.text = "Login or sign up to continue using our app."
        label.textAlignment = .center
        label.textColor = IPColor.textSecondary
        label.font = Fonts.title3
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Email Address"
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Password"
        return textField
    }()
    
    private let forgotPassword: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password?", for: .normal)
        button.setTitleColor(IPColor.textPrimary, for: .normal)
        button.contentHorizontalAlignment = .trailing
        button.titleLabel?.font = Fonts.title4
        return button
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = IPColor.actionLightPurple
        return button
    }()
    
    private let bottomStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 3
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let newUserLabel: UILabel = {
        let label = UILabel()
        label.textColor = IPColor.textSecondary
        label.text = "New User?"
        label.font = Fonts.title3
        label.textAlignment = .right
        return label
    }()
    
    private let signUpNowButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign up now", for: .normal)
        button.setTitleColor(IPColor.actionDarkPurple, for: .normal)
        button.contentHorizontalAlignment = .leading
        return button
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
        overallStackView.addArrangedSubviews(
            loginLabel,
            detailLabel,
            emailTextField,
            passwordTextField,
            forgotPassword,
            loginButton,
            UIView(),
            bottomStackView
        )
        
        bottomStackView.addArrangedSubviews(
            newUserLabel, signUpNowButton
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
