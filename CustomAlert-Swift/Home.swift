//
//  ViewController.swift
//  CustomAlert-Swift
//
//  Created by SM Arif Ahmed on 28/8/22.
//

import UIKit

class Home: UIViewController {
    
    private lazy var showAlertButton : UIButton = {
        let button = UIButton()
        button.setTitle("Show Alert", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubviews()
    }
    
    private func setUpSubviews(){
        view.addSubview(showAlertButton)
        
        showAlertButton.translatesAutoresizingMaskIntoConstraints = false
        showAlertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showAlertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        showAlertButton.widthAnchor.constraint(equalTo: view.widthAnchor , multiplier: 0.4 ).isActive = true
        showAlertButton.heightAnchor.constraint(equalToConstant: 60 ).isActive = true
    }
    
    @objc private func showAlert(){
        print("Show Alert")
    }

}

