//
//  CustomerDetailsViewController.swift
//  C0778925_MIDTerm_MAD3115W2020
//
//  Created by MANBEER KAUR on 2020-03-08.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController {
var customer: Customer?
    
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblDob: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
   
    @IBOutlet weak var buttonBill: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let customer = self.customer{
        self.lblName.text = customer.fullName
            self.lblEmail.text = "Email: \(customer.emailAddress)"
            self.lblGender.text="Gender: \(customer.gender)"
           let b=customer.Dob.stringToDate(string: customer.Dob)
            self.lblDob.text="Birthdate: \(b.dateFormatt(dated: b))"
            self.lblAge.text="Age \(customer.age)"
        }
        // Do any additional setup after loading the view.
    }
    
        
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
