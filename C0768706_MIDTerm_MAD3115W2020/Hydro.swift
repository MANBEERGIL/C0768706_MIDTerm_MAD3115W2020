//
//  Hydro.swift
//  C0768706_MIDTerm_MAD3115W2020
//
//  Created by MANBEER KAUR on 2020-03-05.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
class Hydro: Bill {
    var agencyName:String
    var unitsConsumed:Int
    var ratePerUnit:Float
    
    init(billId:String, billDate: Date, billType: Bills,agencyName:String,unitsConsumed:Int,ratePerUnit:Float,totalBill:Double)
    {

        self.agencyName = agencyName
        self.unitsConsumed = unitsConsumed
        self.ratePerUnit = ratePerUnit
        super.init(billId: billId,billDate: billDate,billType: billType)
        self.totalBill = totalBill
        
    }
     override func display() {
        super.display()
        print("Agency Name : \(self.agencyName)")
        print("Units Consumed : \(self.unitsConsumed)")
        print("Rate Per Unit : \(self.ratePerUnit.ratePerUnit())")
    }
    
}
