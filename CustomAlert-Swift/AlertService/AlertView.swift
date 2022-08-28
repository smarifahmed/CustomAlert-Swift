//
//  AlertView.swift
//  CustomAlert-Swift
//
//  Created by SM Arif Ahmed on 28/8/22.
//

import UIKit

class AlertView: UIView {
    
    private let alertBackground : UIColor = .white
    
    private let title : UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.font = .systemFont(ofSize: 18, weight: .heavy)
        return label
    }()
    
    private let message : UILabel = {
        let label = UILabel()
        label.text = "Show Alert Message here! Show Alert Message here! Show Alert Message here! Show Alert Message here!"
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.numberOfLines = 4
        label.textAlignment = .center
        return label
    }()
    
    private lazy var firstButton : UIButton = {
        let button = UIButton()
        button.setTitle("Cancel", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        //button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        return button
    }()
    
    private lazy var secondButton : UIButton = {
        let button = UIButton()
        button.setTitle("Confirm", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        //button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
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
        //stack.alignment = .
        stack.distribution = .fillEqually
        stack.axis = .horizontal
        stack.layer.borderWidth = 1
        stack.layer.borderColor = UIColor.darkGray.cgColor
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
        stack.spacing = 5
        stack.axis = .vertical
        stack.layer.cornerRadius = 20
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
        backgroundColor = alertBackground
        layer.borderColor = UIColor.red.cgColor
        
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stack.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        
        //title.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //message.heightAnchor.constraint(greaterThanOrEqualToConstant: 50).isActive = true
        paddingView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        paddingView2.heightAnchor.constraint(equalToConstant: 20).isActive = true
        buttonStack.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonStack.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
