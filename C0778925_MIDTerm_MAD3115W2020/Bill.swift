//
//  Bill.swift
//  C0768706_MIDTerm_MAD3115W2020
//
//  Created by MANBEER KAUR on 2020-03-05.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
enum Bills
{
 case HYDRO,INTERNET,MOBILE
}
import Foundation
class Bill:IDisplay{
    var billId:String
    var billDate:Date
    var billType:Bills
    var totalBill:Double = 0.0

init(billId:String,billDate:Date,billType:Bills)
    {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        
    }
    
    func display(){
        print("Bill ID : \(billId)")
        print("Bill Date : \(billDate)")
        print("Bill Type : \(billType)")
        print("Total Bill:\(totalBill.billInTotal())")

        
    }
    
    
}
