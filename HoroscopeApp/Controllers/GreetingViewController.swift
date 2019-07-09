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
        view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    
    }
    
//    init (message: String) {
//        super.init(nibName: nil, bundle: nil)
//        greetingView.greetingLabel.text = message
//    }
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    

}
