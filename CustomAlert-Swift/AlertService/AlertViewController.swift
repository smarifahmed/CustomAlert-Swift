//
//  AlertViewController.swift
//  CustomAlert-Swift
//
//  Created by SM Arif Ahmed on 28/8/22.
//

import UIKit

class AlertViewController : UIViewController{
    
    private lazy var alertView = AlertView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubviews()
    }
    
    private func setUpSubviews(){
        view.addSubview(alertView)
        view.backgroundColor = .black.withAlphaComponent(0.3)
        
        alertView.translatesAutoresizingMaskIntoConstraints = false
        alertView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        alertView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        alertView.widthAnchor.constraint(equalTo: view.widthAnchor , multiplier: 0.75 ).isActive = true
        //alertView.heightAnchor.constraint(equalToConstant: 200 ).isActive = true
    }
}
