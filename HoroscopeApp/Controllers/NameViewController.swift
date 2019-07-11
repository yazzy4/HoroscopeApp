//
//  ViewController.swift
//  HoroscopeApp
//
//  Created by Yaz Burrell on 7/3/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {
    
    let placeholderFirstName = "First Name"
    let placeholderLastName = "Last Name"
    let nameView = NameView()
    var firstName = String()
    var lastName = String()
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nameView)
        nameView.delegate = self
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
    }
    

}

extension NameViewController : MainViewDelegate {
    func typedMessage(firstName: String, lastName: String) {
        
    }
    
    func seguePressed() {
        let bv = BirthdayViewController()
        //check if first and last are entered
        guard let firstname = nameView.firstName.text, let lastName = nameView.lastName.text else {
            self.showAlert(title: "Error", message: "Enter First and Last Name")
            return
        }
        guard firstname != "" && lastName != "" else {
            self.showAlert(title: "Error", message: "Enter First and Last Name")
            return
        }
        if firstName != placeholderFirstName && lastName != placeholderLastName {
            self.firstName = firstname
            self.lastName = lastName
            let fullName = self.firstName + " " + self.lastName
            bv.fullName = fullName
            self.present(bv, animated: true, completion: nil)
            
        } else {
            self.showAlert(title: "Error", message: "No Text Entered")
        }
        
        
        
    }
    
    
}

extension NameViewController: UITextFieldDelegate {
    
}



