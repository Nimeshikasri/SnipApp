//
//  ViewController.swift
//  n
//
//  Created by cloud on 17/01/22.
//

import UIKit

class LoginVC: UIViewController {
   
    
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var usernameTF: UITextField!
    
 
    
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
   
    @IBAction func loginaction(_ sender: Any) {
        let username = usernameTF.text ?? ""
        let password = passwordTF.text ?? ""
        
        if(username.count > 0 && username == "abc" &&
           password.count > 0 && password == "abc") {
        
        
        let objsignupVC = self.storyboard?.instantiateViewController(identifier: "SignupVC")as? SignupVC
        
        if let objsignupVC = objsignupVC {
            self.navigationController?.pushViewController(objsignupVC,animated: true)
            
        }
    }else{
        print("check username/password")
    }    }
    
    
}
