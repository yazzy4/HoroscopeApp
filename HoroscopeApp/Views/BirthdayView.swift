//
//  BirthdayView.swift
//  HoroscopeApp
//
//  Created by Yaz Burrell on 7/5/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit

protocol BirthdayDelegate: AnyObject {
    func submitPressed()
}
class BirthdayView: UIView {
    
    weak var delegate: BirthdayDelegate?

    lazy var birthdateLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter Your Birthday"
        label.numberOfLines = 3
        label.font = UIFont(name: "Helvetica-Bold", size: 30)
        label.textColor = .white
        label.textAlignment = .center
        
        return label
    }()
    
    let today = Date()

    lazy var birthdatePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        let dateFormatter = DateFormatter()
        
        datePicker.datePickerMode = .date
        
        
        datePicker.setValue(UIColor.white, forKeyPath: "textColor")
        return datePicker
    }()
    
    lazy var picker: UIPickerView = {
        let picker = UIPickerView()
        return picker
    }()
    
    lazy var submitButton: UIButton = {
        let button = UIButton()
        button.setTitle("Submit", for: .normal)
        button.addTarget(self, action: #selector(submitButtonPressed), for: .touchUpInside)
        button.backgroundColor = .black
        return button
    }()
    
    @objc func submitButtonPressed() {
        delegate?.submitPressed()
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
        setupLabel()
        setupPickerView()
        setupSubmitButton()
    }
    
    func setupLabel() {
        addSubview(birthdateLabel)
        birthdateLabel.translatesAutoresizingMaskIntoConstraints = false
        birthdateLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        birthdateLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -130).isActive = true
        birthdateLabel.widthAnchor.constraint(equalTo: widthAnchor, constant: -50).isActive = true
        birthdateLabel.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.06).isActive = true
        
    }
    
    
    
    func setupPickerView(){
        addSubview(birthdatePicker)
        birthdatePicker.translatesAutoresizingMaskIntoConstraints = false
        birthdatePicker.topAnchor.constraint(equalTo: birthdateLabel.bottomAnchor, constant: -30).isActive = true
        birthdatePicker.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        birthdatePicker.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 80).isActive = true
        birthdatePicker.widthAnchor.constraint(equalTo: birthdateLabel.widthAnchor).isActive = true
        birthdatePicker.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
    }
    
    func setupSubmitButton(){
        addSubview(submitButton)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.topAnchor.constraint(equalTo: birthdatePicker.bottomAnchor).isActive = true
        submitButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 300).isActive = true
        submitButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        submitButton.heightAnchor.constraint(equalTo: birthdateLabel.heightAnchor).isActive = true
        submitButton.widthAnchor.constraint(equalTo: birthdateLabel.widthAnchor).isActive = true
    }
    
  

}
