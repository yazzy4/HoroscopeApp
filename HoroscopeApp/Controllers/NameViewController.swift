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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nameView)
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    }


}

