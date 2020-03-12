//
//  Extension+String.swift
//  C0768706_MIDTerm_MAD3115W2020
//
//  Created by MANBEER KAUR on 2020-03-07.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
extension String{
    func isEmailValid(email:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
        }
    
    
    func mobileValid() -> Bool{         
        let mobileNumberRegEx = "[0-9]{10}"
        let mobileTest = NSPredicate(format: "SELF MATCHES %@", mobileNumberRegEx)
        return mobileTest.evaluate(with: self)
    }
    func stringToDate(string : String) -> Date {      //https://stackoverflow.com/questions/35700281/date-format-in-swift
        
        let dateformatGet1 = DateFormatter()
        dateformatGet1.dateFormat = "dd/MM/yyyy"
     
        let birthDate1 : Date? = dateformatGet1.date(from: string)
        return birthDate1!
    }
    
}
extension Date{
    func dateFormatt(dated:Date)->String
    {
        let dateFormatter = DateFormatter()

           dateFormatter.dateStyle = DateFormatter.Style.long
        let str=dateFormatter.string(from: dated)
        return str
    }
}
