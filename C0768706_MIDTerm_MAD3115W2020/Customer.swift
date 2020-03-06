//
//  Customer.swift
//  C0768706_MIDTerm_MAD3115W2020
//
//  Created by MANBEER KAUR on 2020-03-05.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
class Customer
{
    var customerId:String
    var firstName:String
    var lastName:String
    var fullName:String
    {
        return "\(firstName) \(lastName)"
    }
    var emailId:String?
    var totalBillToPay:Double = 0.0
    lazy var bills = [String:Bill](); init(customerId:String,firstName:String,lastName:String,emailId:String) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        if isEmailValid(email:emailId){
            self.emailId = emailId
        }
        else{
            print("This Email is invalid for \(customerId):\(emailId)")
        }
    }
        func isEmailValid(email:String) -> Bool {
               let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
               
               let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
               return emailTest.evaluate(with: email)
           }
    
    func addBill(bill:Bill,billId:String)
    {
        bills.updateValue(bill,forKey:billId)
    }
    
    func deleteBill(billId:String){
        bills.removeValue(forKey: billId)
    }
    
    func calculateTotalBill() -> Double {
        if bills.count == 0 {
            print("\t no bill to pay for this customer")
        }
        for b in bills {
            totalBillToPay += b.value.totalBillAmount
        }
        return totalBillToPay
    }
    func display(){
        print("Customer ID: \(customerId)")
        print("Customer Full Name :\(fullName)")
        print("Customer Email ID:\(String(describing: emailId))")
        print("\t __________Bill Information__________")
        print("\t _____________________________________")
        for b in bills{
            b.value.display()
            print("___________________________________")
        }
        print("Total amount of bill to pay :\(calculateTotalBill().billInTotal())")
        print("\t ________________________________")
        
        
        
    }
}
    
