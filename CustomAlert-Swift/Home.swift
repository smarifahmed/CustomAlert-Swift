//
//  ViewController.swift
//  CustomAlert-Swift
//
//  Created by SM Arif Ahmed on 28/8/22.
//

import UIKit

class Home: UIViewController {
    
    private lazy var doubleAlertButton : UIButton = {
        let button = UIButton()
        button.setTitle("Double Button Alert", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(showDoubleButtonAlert), for: .touchUpInside)
        return button
    }()
    
    private lazy var singleAlertButton : UIButton = {
        let button = UIButton()
        button.setTitle("Single Button Alert", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        button.backgroundColor = .systemCyan
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(showSingleButtonAlert), for: .touchUpInside)
        return button
    }()
    
    private lazy var stack : UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        stack.spacing = 15
        stack.alignment = .fill
        stack.axis = .vertical
        stack.addArrangedSubview(doubleAlertButton)
        stack.addArrangedSubview(singleAlertButton)
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubviews()
    }
    
    private func setUpSubviews(){
        view.addSubview(stack)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stack.widthAnchor.constraint(equalTo: view.widthAnchor , multiplier: 0.6 ).isActive = true
        stack.heightAnchor.constraint(equalToConstant: 120 ).isActive = true
    }
    
    @objc private func showDoubleButtonAlert(){
        AlertService.showAlert(self, title: "Warning", message: "Show Alert Message here! Whatever message you wanna show, type here. The height will increase dynamically.") { action in
            switch action {
            case .firstButton:
                print("First Button Tapped")
            case .secondButton:
                print("Second Button Tapped")
            }
        }
    }
    
    @objc private func showSingleButtonAlert(){
        AlertService.showSingleButtonAlert(self, title: "Warning!", message: "Show Alert Message here! Whatever message you wanna show, type here. The height will increase dynamically.", buttonTitle: "OK", tappedOn: nil)
    }

}

