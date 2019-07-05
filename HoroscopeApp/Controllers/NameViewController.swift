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
        view.addSubview(NameView)
    }


}

