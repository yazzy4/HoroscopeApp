//
//  UIViewController+Alert.swift
//  HoroscopeApp
//
//  Created by Yaz Burrell on 7/11/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit

extension UIViewController {
    
public func showAlert(title: String?, message: String?) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in }
    alertController.addAction(okAction)
    present(alertController, animated: true, completion: nil)
}

public func showAlert(title: String?, message: String?, handler: ((UIAlertAction) -> Void)?) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Ok", style: .default, handler: handler)
    alertController.addAction(okAction)
    present(alertController, animated: true, completion: nil)
    }
}
