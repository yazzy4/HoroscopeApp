//
//  NameView.swift
//  HoroscopeApp
//
//  Created by Yaz Burrell on 7/5/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func typedMessage(firstName: String, lastName: String)
    func seguePressed()
}

class NameView: UIView {
    
    weak var delegate: MainViewDelegate?
     
    
    public lazy var instructionLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter First And Last Name"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Helvetica-Bold", size: 30)
        label.textAlignment = .center
        label.numberOfLines = 3
        return label
    }()

    public lazy var firstName: UITextField = {
        let text = UITextField()
        text.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        text.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        text.placeholder = "First Name"
        text.layer.cornerRadius = 10
        text.layer.masksToBounds = true
        return text
        
    }()
    
    public lazy var lastName: UITextField = {
        let text = UITextField()
        text.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        text.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        text.placeholder = "Last Name"
        text.layer.cornerRadius = 10
        text.layer.masksToBounds = true
        return text
        
    }()
    
    public lazy var submitButton: UIButton = {
        let button = UIButton()
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(submitButtonPressed), for: .touchUpInside)
        return button
    }()
    
    @objc func submitButtonPressed(){
        delegate?.seguePressed()
    }
    
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
        setupInstructionLabel()
        setupSubmitButton()
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
    
    func setupInstructionLabel(){
        addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.bottomAnchor.constraint(equalTo: firstName.topAnchor, constant: -30).isActive = true
        instructionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        instructionLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        instructionLabel.widthAnchor.constraint(equalTo: firstName.widthAnchor).isActive = true
        instructionLabel.heightAnchor.constraint(equalTo: firstName.heightAnchor, constant: 50).isActive = true
    }
    
    func setupSubmitButton(){
        addSubview(submitButton)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.topAnchor.constraint(equalTo: lastName.bottomAnchor).isActive = true
        submitButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 80).isActive = true
        submitButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        submitButton.heightAnchor.constraint(equalTo: lastName.heightAnchor).isActive = true
        submitButton.widthAnchor.constraint(equalTo: lastName.widthAnchor).isActive = true
    }
    
    
    
}
