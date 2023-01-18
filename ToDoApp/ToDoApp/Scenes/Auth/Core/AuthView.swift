//
//  AuthView.swift
//  ToDoApp
//
//  Created by Emir Alkal on 18.01.2023.
//

import UIKit

final class AuthView: UIView {
    
    private let scrollView: UIScrollView!
    
    init(
        scrollView: UIScrollView
    ) {
        self.scrollView = scrollView
        super.init(frame: .zero)
        backgroundColor = IPColor.backgroundColor
        addSubview(scrollView)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        scrollView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
