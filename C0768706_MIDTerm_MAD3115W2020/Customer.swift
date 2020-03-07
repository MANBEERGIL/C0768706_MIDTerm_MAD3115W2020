//
//  Customer.swift
//  C0768706_MIDTerm_MAD3115W2020
//
//  Created by MANBEER KAUR on 2020-03-07.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
class Customer
{
var customerId:String
var firstName:String
var lastName:String
    public var fullName: String{
    return "\(firstName) \(lastName)"
    }
    //lazy var bills=[String : Bill]()

var emailAddress:String?
   
    var totalBillToPay:Double=0.00
    
init(customerId:String,firstName:String,lastName:String,emailAddress:String)
{
self.customerId=customerId
self.firstName=firstName
self.lastName=lastName
    
   


}
}
