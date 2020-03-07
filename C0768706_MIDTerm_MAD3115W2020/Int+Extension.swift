//
//  Int+Extension.swift
//  C0768706_MIDTerm_MAD3115W2020
//
//  Created by MANBEER KAUR on 2020-03-05.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
extension Int {
    func unitsConsumed()->String{
        return "\(self) units"
        
    }
    func minuteUsed()->String{
        return "\(self) minutes"
    }
    func internetUsedMobile() ->String
    {
        return "\(self) GB "
    }
    func internetGbUsedHome() -> String {
        return "\(self) GB"
    }
    
    
}

