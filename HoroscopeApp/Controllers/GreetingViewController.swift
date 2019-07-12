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
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.astro = AstroSign(fullName: fullName)
        greetingView.greetingLabel.text = "Welcome \(fullName), your sign is:"
        
        
        displayZodiacSign()
    
    }
    
    func displayZodiacSign(){
        if let astro = astro {
            for(sign, interval) in astro.dict {
                let dateFormatter = DateFormatter()
                //not the best format
                //takes date, returns string, turns back into date
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
