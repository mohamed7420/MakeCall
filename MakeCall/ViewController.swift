//
//  ViewController.swift
//  MakeCall
//
//  Created by Mohamed on 10/5/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumberTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }


    @IBAction func btn_call(_ sender: Any) {
        
        let phoneNumber = phoneNumberTF.text
        
        let url = URL(string: "telprompt://\(phoneNumber ?? "")")
        
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        
    }
}

