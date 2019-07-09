//
//  ViewController.swift
//  HoroscopeApp
//
//  Created by Yaz Burrell on 7/3/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {

    let nameView = NameView()
    public var message = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nameView)
        nameView.delegate = self
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    }
    

}

extension NameViewController : MainViewDelegate {
    func typedMessage() {
        
    }
    
    func seguePressed() {
        let bv = BirthdayViewController()
        self.present(bv, animated: true, completion: nil)
    }
    
    
}



