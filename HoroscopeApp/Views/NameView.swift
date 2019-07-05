//
//  NameView.swift
//  HoroscopeApp
//
//  Created by Yaz Burrell on 7/5/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit

class NameView: UIView {
    
    public lazy var instructionLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter First And Last Name"
        return label
    }()

    public lazy var firstName: UITextView = {
        let text = UITextView()
        text.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        text.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        text.text = "First Name"
        text.layer.cornerRadius = 10
        text.layer.masksToBounds = true
        return text
        
    }()
    
    public lazy var lastName: UITextView = {
        let text = UITextView()
        text.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        text.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        text.text = "Last Name"
        text.layer.cornerRadius = 10
        text.layer.masksToBounds = true
        return text
        
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
       setupFirstName()
        setupLastName()
    }
    
    func setupFirstName() {
        addSubview(firstName)
        firstName.translatesAutoresizingMaskIntoConstraints = false
        firstName.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        firstName.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor, constant: -50).isActive = true
        firstName.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, constant: -50).isActive = true
        firstName.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.06).isActive = true
    }
    
    func setupLastName() {
        addSubview(lastName)
        lastName.translatesAutoresizingMaskIntoConstraints = false
        lastName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lastName.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 15).isActive = true
        lastName.heightAnchor.constraint(equalTo: firstName.heightAnchor).isActive = true
        lastName.widthAnchor.constraint(equalTo: firstName.widthAnchor).isActive = true
    }
    
    
    
}
