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
    var astro: AstroSign?
    var fullName = String()
    var birthday = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(greetingView)
        view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        self.astro = AstroSign(fullName: fullName)
        greetingView.greetingLabel.text = "Welcome \(fullName)"
        
        
        displayZodiacSign()
    
    }
    
    func displayZodiacSign(){
        if let astro = astro {
            for(sign, interval) in astro.dict {
                let dateFormatter = DateFormatter()
                //not the best format
                dateFormatter.dateFormat = "MMM d"
                let formattedBDayStr = dateFormatter.string(from: birthday)
                let formattedBDayDate = dateFormatter.date(from: formattedBDayStr)
                if interval.contains(formattedBDayDate!) {
                    greetingView.zodiacResult.text = sign.uppercased()
                }
            }
        } else {
            print("NO SIGNNNNNN")
        }
    }
    
}
