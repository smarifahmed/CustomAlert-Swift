//
//  AlertService.swift
//  CustomAlert-Swift
//
//  Created by SM Arif Ahmed on 29/8/22.
//

import Foundation
import UIKit

class AlertService {
    static func showAlert(_ controller : UIViewController, title : String, message : String, tappedOn : @escaping (AlertAction) -> Void){
        let vc = AlertViewController()
        vc.setAlertTexts(title, message)
        vc.alertAction = tappedOn
        vc.modalPresentationStyle = .overFullScreen
        vc.modalTransitionStyle = .crossDissolve
        controller.present(vc, animated: true)
    }
}
