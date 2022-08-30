//
//  AlertViewController.swift
//  CustomAlert-Swift
//
//  Created by SM Arif Ahmed on 28/8/22.
//

import UIKit

enum AlertAction {
    case firstButton , secondButton
}

class AlertViewController : UIViewController{
    
    private let alertView = AlertView()
    var alertAction : ((AlertAction) -> Void)?
    var isSingleButton : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubviews()
    }
    
    private func setUpSubviews(){
        view.addSubview(alertView)
        alertView.backgroundColor = .black.withAlphaComponent(0.3)
        
        alertView.translatesAutoresizingMaskIntoConstraints = false
        alertView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        alertView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        alertView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        alertView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        alertView.firstButton.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        alertView.secondButton.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
    }
    
    //MARK: - Functions
    func setAlertTexts(_ title : String, _ message : String, _ first : String, _ second : String = "Confirm"){
        alertView.title.text = title
        alertView.message.text = message
        alertView.firstButton.setTitle(first, for: .normal)
        alertView.secondButton.setTitle(second, for: .normal)
        alertView.secondButton.isHidden = isSingleButton
    }
    
    //MARK: - Actions
    @objc private func buttonAction(_ button : UIButton){
        if let alertAction = alertAction {
            switch button.tag{
            ///FirstButton
            case 1 : alertAction(.firstButton)
                
            ///SecondButton
            case 2 : alertAction(.secondButton)
            default: break
            }
        }
        self.dismiss(animated: true)
    }
}
