//
//  Internet.swift
//  C0768706_MIDTerm_MAD3115W2020
//
//  Created by MANBEER KAUR on 2020-03-05.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
class Internet: Bill {
    var providerName:String
    var internetGbUsedHome:Int
    var ratePerGB:Float
    init(billId: String, billDate: Date, billType: Bills,providerName:String,internetGbUsedHome:Int,ratePerGB:Float,totalBill:Double) {
        self.providerName = providerName
        self.internetGbUsedHome = internetGbUsedHome
        self.ratePerGB = ratePerGB
        super.init(billId: billId, billDate: billDate, billType: billType)
        self.totalBill = totalBill
    }
    override func display() {
        super.display()
        print("Provider Name: \(self.providerName)")
        print("Internet GB Used: \(self.internetGbUsedHome.internetGbUsedHome())")
        print("Rate Per GB: \(self.ratePerGB.ratePerGB())")
    }
    
}
