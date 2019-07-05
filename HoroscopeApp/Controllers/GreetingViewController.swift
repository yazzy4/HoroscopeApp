//
//  GreetingViewController.swift
//  HoroscopeApp
//
//  Created by Yaz Burrell on 7/5/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {

    let greetingView = GreetingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(greetingView)
    
    }
    

}
