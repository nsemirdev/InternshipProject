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
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.spacing = 32
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
    
    private let emailTextField: CustomTextField = {
        let textField = CustomTextField(placeholder: "Email Address")
        return textField
    }()
    
    private let passwordTextField: CustomTextField = {
        let textField = CustomTextField(placeholder: "Password")
        return textField
    }()
    
    private let forgotPassword: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot Password?", for: .normal)
        button.setTitleColor(IPColor.textPrimary, for: .normal)
        button.contentHorizontalAlignment = .trailing
        button.titleLabel?.font = Fonts.title4
        return button
    }()
    
    private let loginButton: CustomButton = {
        let button = CustomButton(title: "Login")
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
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
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

extension LoginScrollView: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = IPColor.actionDarkPurple.cgColor
        textField.placeholderRect(forBounds: .init(x: 0, y: 0, width: 100, height: 30))
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderColor = IPColor.borderGray.cgColor
    }
}
