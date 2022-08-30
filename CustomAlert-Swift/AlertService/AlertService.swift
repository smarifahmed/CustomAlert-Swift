//
//  AlertService.swift
//  CustomAlert-Swift
//
//  Created by SM Arif Ahmed on 29/8/22.
//

import Foundation
import UIKit

class AlertService {
    static func showAlert(_ controller : UIViewController,
                          title : String,
                          message : String,
                          fistButtonTitle first : String = "Cancel",
                          secondButtonTitle second : String = "Confirm",
                          tappedOn : @escaping (AlertAction) -> Void){
        
        let vc = AlertViewController()
        vc.setAlertTexts(title, message, first, second)
        vc.alertAction = tappedOn
        vc.modalPresentationStyle = .overFullScreen
        vc.modalTransitionStyle = .crossDissolve
        controller.present(vc, animated: true)
    }
    
    static func showSingleButtonAlert(_ controller : UIViewController,
                          title : String,
                          message : String,
                          buttonTitle first : String = "OK",
                          tappedOn : ((AlertAction) -> Void)? = nil){
        
        let vc = AlertViewController()
        vc.isSingleButton = true
        vc.setAlertTexts(title, message, first)
        vc.alertAction = tappedOn
        vc.modalPresentationStyle = .overFullScreen
        vc.modalTransitionStyle = .crossDissolve
        controller.present(vc, animated: true)
    }
}
