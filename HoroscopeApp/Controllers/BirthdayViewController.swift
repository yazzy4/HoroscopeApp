//
//  BirthdayViewController.swift
//  HoroscopeApp
//
//  Created by Yaz Burrell on 7/5/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit



class BirthdayViewController: UIViewController {
    

    let birthdayView = BirthdayView()
    var fullName = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(birthdayView)
        birthdayView.delegate = self
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        
        
    }
    
}

extension BirthdayViewController: BirthdayDelegate {
    func submitPressed() {
        
        let gv = GreetingViewController()
        gv.fullName = self.fullName
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d"
        
        gv.birthday = birthdayView.birthdatePicker.date
        self.present(gv, animated: true, completion: nil)
    }
    
    
}
