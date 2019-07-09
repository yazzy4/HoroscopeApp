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
        label.text = "Welcome First and Last name, your sign is: "
        label.font = UIFont(name: "Helvetica-Bold", size: 30)
        label.backgroundColor = .black
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 3
        return label
    }()
    
    lazy var zodiacResult: UILabel = {
        let label = UILabel()
        label.text = "Zodiac sign"
        label.font = UIFont(name: "Helvetica-Bold", size: 30)
        label.backgroundColor = .black
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 3
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
        setupGreetingLabel()
        setupZodiacResult()
    }
    
    func setupGreetingLabel() {
        addSubview(greetingLabel)
        greetingLabel.translatesAutoresizingMaskIntoConstraints = false
        greetingLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        greetingLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -190).isActive = true
        greetingLabel.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.1).isActive = true
        greetingLabel.widthAnchor.constraint(equalTo: widthAnchor, constant: -50).isActive = true
    }
    
    func setupZodiacResult() {
        addSubview(zodiacResult)
        zodiacResult.translatesAutoresizingMaskIntoConstraints = false
        zodiacResult.topAnchor.constraint(equalTo: greetingLabel.bottomAnchor).isActive = true
        zodiacResult.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        zodiacResult.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -30).isActive = true
        zodiacResult.widthAnchor.constraint(equalTo: greetingLabel.widthAnchor).isActive = true
        zodiacResult.heightAnchor.constraint(equalTo: greetingLabel.heightAnchor).isActive = true
    }
    
}
