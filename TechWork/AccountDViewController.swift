//
//  AccountDViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 22/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class AccountDViewController: UIViewController {
    
    @IBOutlet var bankNTxt: UITextField!
    @IBOutlet var accountNOTxt: UITextField!
    @IBOutlet var raccountNOTxt: UITextField!
    @IBOutlet var ifscTxt: UITextField!
  

    @IBOutlet var submitBTn: UIButton!
    
 

    var iscallForgotPw = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
   
   
        
     
        
        self.hideKeyBoardTappedAround()
        
        //Mark:Hiding & Showing Keyboard Animation
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
        
        RoundPlaceHolder()
        RoundBorderBTN()
        
                self.navigationItem.title = "Account Details";
                let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.lightGray]
        //
                navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
    func RoundBorderBTN() {
        submitBTn.layer.cornerRadius = 10.0
           submitBTn.layer.borderWidth = 1;
           submitBTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
     
    }
    func RoundPlaceHolder() {
        bankNTxt.clipsToBounds = true;
           bankNTxt.layer.cornerRadius = 10.0;
           bankNTxt.layer.borderWidth = 1;
           bankNTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
            bankNTxt.attributedPlaceholder = NSAttributedString(string: "Bank Name",
                                                              attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
             bankNTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: bankNTxt.frame.height))
             bankNTxt.leftViewMode = .always
        
        accountNOTxt.clipsToBounds = true;
            accountNOTxt.layer.cornerRadius = 10.0;
            accountNOTxt.layer.borderWidth = 1;
            accountNOTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
             accountNOTxt.attributedPlaceholder = NSAttributedString(string: "Account NO",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
              accountNOTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: accountNOTxt.frame.height))
              accountNOTxt.leftViewMode = .always
        
        raccountNOTxt.clipsToBounds = true;
            raccountNOTxt.layer.cornerRadius = 10.0;
            raccountNOTxt.layer.borderWidth = 1;
            raccountNOTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
             raccountNOTxt.attributedPlaceholder = NSAttributedString(string: "Re-Account NO",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
              raccountNOTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: raccountNOTxt.frame.height))
              raccountNOTxt.leftViewMode = .always
        
        ifscTxt.clipsToBounds = true;
            ifscTxt.layer.cornerRadius = 10.0;
            ifscTxt.layer.borderWidth = 1;
            ifscTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
             ifscTxt.attributedPlaceholder = NSAttributedString(string: "Address",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
              ifscTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: ifscTxt.frame.height))
              ifscTxt.leftViewMode = .always
        
    
    }
    func hideKeyBoardTappedAround() {
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
        
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if self.view.frame.origin.y==0 {
            self.view.frame.origin.y -= 50
        }
        
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            
            self.view.frame.origin.y += 50
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
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
