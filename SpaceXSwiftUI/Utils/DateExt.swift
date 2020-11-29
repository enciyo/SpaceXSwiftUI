//
//  DateExt.swift
//  SpaceXSwiftUI
//
//  Created by Mustafa Kilic on 29.11.2020.
//

import Foundation


func convertDateFormat(inputDate: String) -> String? {

     let olDateFormatter = DateFormatter()
     olDateFormatter.dateFormat =  "yyyy-MM-dd'T'HH:mm:ss.sssZ"

     let oldDate = olDateFormatter.date(from: inputDate)

     let convertDateFormatter = DateFormatter()
     convertDateFormatter.dateFormat = "MMM dd yyyy h:mm a"
    
    if oldDate == nil {
        return ""
    }
     return convertDateFormatter.string(from: oldDate!)
}
