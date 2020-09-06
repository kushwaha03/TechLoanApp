//
//  IncomeVViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 21/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class IncomeVViewController: UIViewController {
    
    @IBOutlet var companyNTxt: UITextField!
    @IBOutlet var industryNTxt: UITextField!
    @IBOutlet var roleTxt: UITextField!
    @IBOutlet var addressTxt: UITextField!
  

    @IBOutlet var submitBTn: UIButton!
    
    @IBOutlet var salary1BTn: UIButton!
    @IBOutlet var salary2BTn: UIButton!

    @IBOutlet var salary3BTn: UIButton!


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
                self.navigationItem.title = "Income Verification";
                let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.lightGray]
        //
                navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
    func RoundBorderBTN() {
        submitBTn.layer.cornerRadius = 10.0
           submitBTn.layer.borderWidth = 1;
           submitBTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
        salary1BTn.layer.cornerRadius = 10.0
           salary1BTn.layer.borderWidth = 1;
           salary1BTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
        salary2BTn.layer.cornerRadius = 10.0
           salary2BTn.layer.borderWidth = 1;
           salary2BTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
        salary3BTn.layer.cornerRadius = 10.0
           salary3BTn.layer.borderWidth = 1;
           salary3BTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
    }
    func RoundPlaceHolder() {
        companyNTxt.clipsToBounds = true;
           companyNTxt.layer.cornerRadius = 10.0;
           companyNTxt.layer.borderWidth = 1;
           companyNTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
            companyNTxt.attributedPlaceholder = NSAttributedString(string: "Company Name",
                                                              attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
             companyNTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: companyNTxt.frame.height))
             companyNTxt.leftViewMode = .always
        
        industryNTxt.clipsToBounds = true;
            industryNTxt.layer.cornerRadius = 10.0;
            industryNTxt.layer.borderWidth = 1;
            industryNTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
             industryNTxt.attributedPlaceholder = NSAttributedString(string: "Industry Type",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
              industryNTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: industryNTxt.frame.height))
              industryNTxt.leftViewMode = .always
        
        roleTxt.clipsToBounds = true;
            roleTxt.layer.cornerRadius = 10.0;
            roleTxt.layer.borderWidth = 1;
            roleTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
             roleTxt.attributedPlaceholder = NSAttributedString(string: "Your Role",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
              roleTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: roleTxt.frame.height))
              roleTxt.leftViewMode = .always
        
        addressTxt.clipsToBounds = true;
            addressTxt.layer.cornerRadius = 10.0;
            addressTxt.layer.borderWidth = 1;
            addressTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
             addressTxt.attributedPlaceholder = NSAttributedString(string: "Address",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
              addressTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: addressTxt.frame.height))
              addressTxt.leftViewMode = .always
        
    
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
