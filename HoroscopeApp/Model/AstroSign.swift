//
//  User.swift
//  HoroscopeApp
//
//  Created by Yaz Burrell on 7/5/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import Foundation

class AstroSign {
    
    public var fullName: String
    
    init(fullName: String)
          {
        self.fullName = fullName
        
    }
    
    static func dateIntervalFromStrings(str1: String, str2: String) -> DateInterval {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d"
        
        let date1 = dateFormatter.date(from: str1)!
        let date2 = dateFormatter.date(from: str2)!
        
        
        let dateInterval = DateInterval(start: date1, end: date2)
        return dateInterval
    }
    
    let dict: [String: DateInterval] = ["Pisces": dateIntervalFromStrings(str1: "Feb 19", str2: "Mar 20"),
                                        "Aries": dateIntervalFromStrings(str1: "Mar 21", str2: "Apr 19"),
                                        "Taurus" : dateIntervalFromStrings(str1: "Apr 20", str2: "May 20"),
                                        "Gemini": dateIntervalFromStrings(str1: "May 21", str2: "Jun 20"),
                                        "Cancer": dateIntervalFromStrings(str1: "Jun 21", str2: "Jul 22"),
                                        "Leo": dateIntervalFromStrings(str1: "Jul 23", str2: "Aug 22"),
                                        "Virgo": dateIntervalFromStrings(str1: "Aug 23", str2: "Sep 22"),
                                        "Libra": dateIntervalFromStrings(str1: "Sep 23", str2: "Oct 22"),
                                        "Scorpio": dateIntervalFromStrings(str1: "Oct 23", str2: "Nov 21"),
                                        "Saggittarius": dateIntervalFromStrings(str1: "Nov 22", str2: "Dec 21"),
                                        "Capricorn": dateIntervalFromStrings(str1: "Dec 22", str2: "Dec 31"),
                                        "capricorn": dateIntervalFromStrings(str1: "Jan 1", str2: "Jan 19"),
                                        "Aquarius": dateIntervalFromStrings(str1: "Jan 20", str2: "Feb 18")]
}
