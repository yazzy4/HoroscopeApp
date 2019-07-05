//
//  BirthdayView.swift
//  HoroscopeApp
//
//  Created by Yaz Burrell on 7/5/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit

class BirthdayView: UIView {

    lazy var birthdate: UIPickerView = {
        let picker = UIPickerView()
        return picker 
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
    
    func setupPickerView() {
        addSubview(birthdate)
    }

}
