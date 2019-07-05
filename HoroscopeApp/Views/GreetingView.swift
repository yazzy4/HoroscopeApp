//
//  GreetingView.swift
//  HoroscopeApp
//
//  Created by Yaz Burrell on 7/5/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit

class GreetingView: UIView {

    lazy var greetingLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var zodiacResult: UILabel = {
        let label = UILabel()
        return label 
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        
    }
    
    func setupGreetingLabel() {
        
    }
    
    func setupZodiacResult() {
        
    }
    
}
