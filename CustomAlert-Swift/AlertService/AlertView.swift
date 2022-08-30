//
//  AlertView.swift
//  CustomAlert-Swift
//
//  Created by SM Arif Ahmed on 28/8/22.
//

import UIKit

class AlertView: UIView {
    
    private let alertBackground : UIColor = .white
    private let titlePadding : CGFloat = 20
    private let buttonHeight : CGFloat = 50
    
    let title : UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.font = .systemFont(ofSize: 18, weight: .heavy)
        return label
    }()
    
    let message : UILabel = {
        let label = UILabel()
        label.text = "Show Alert Message here! Show Alert Message here! Show Alert Message here! Show Alert Message here!"
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.numberOfLines = 10
        label.textAlignment = .center
        return label
    }()
    
    let firstButton : UIButton = {
        let button = UIButton()
        button.setTitle("Cancel", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        button.backgroundColor = .systemRed
        button.tag = 1
        return button
    }()
    
    let secondButton : UIButton = {
        let button = UIButton()
        button.setTitle("Confirm", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        button.backgroundColor = .systemGreen
        button.tag = 2
        return button
    }()
    
    private let paddingView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    private let paddingView2 : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    private lazy var buttonStack : UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        stack.axis = .horizontal
        [firstButton, secondButton]
            .forEach { label in
                stack.addArrangedSubview(label)
            }
        
        stack.backgroundColor = alertBackground
        return stack
    }()
    
    private lazy var stack : UIStackView = {
        let stack = UIStackView()
        stack.alignment = .center
        stack.axis = .vertical
        stack.layer.cornerRadius = 20
        stack.backgroundColor = alertBackground
        stack.clipsToBounds = true
        [paddingView, title, message, paddingView2, buttonStack]
            .forEach { view in
                stack.addArrangedSubview(view)
            }
        
        stack.backgroundColor = alertBackground
        return stack
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stack.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        stack.widthAnchor.constraint(equalTo: widthAnchor , multiplier: 0.8 ).isActive = true
        
        paddingView.heightAnchor.constraint(equalToConstant: titlePadding).isActive = true
        paddingView2.heightAnchor.constraint(equalToConstant: titlePadding).isActive = true
        buttonStack.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        buttonStack.widthAnchor.constraint(equalTo: stack.widthAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
