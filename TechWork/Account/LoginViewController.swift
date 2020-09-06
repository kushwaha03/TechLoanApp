//
//  LoginViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 21/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var PhoneNoTxt: UITextField!
    @IBOutlet var submitBTn: UIButton!
    var iscallForgotPw = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        PhoneNoTxt.clipsToBounds = true;
        PhoneNoTxt.layer.cornerRadius = 10.0;
        PhoneNoTxt.layer.borderWidth = 1;
        PhoneNoTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
        submitBTn.layer.cornerRadius = 10.0
        submitBTn.layer.borderWidth = 1;
        submitBTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
        
        PhoneNoTxt.attributedPlaceholder = NSAttributedString(string: "Phone Number",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        PhoneNoTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: PhoneNoTxt.frame.height))
        PhoneNoTxt.leftViewMode = .always
        
        self.hideKeyBoardTappedAround()
        
        //Mark:Hiding & Showing Keyboard Animation
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
        self.navigationItem.setHidesBackButton(true, animated: true);
//
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.lightGray]
//
        navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
    
    
    @IBAction func otpVerifyAct(_ sender: Any) {
       
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "OTPViewController") as! OTPViewController
    self.navigationController?.pushViewController(vc, animated: true)
//        if((self.PhoneNoTxt.text!).isEmpty)
//        {
//            print("You can't keep Phone No Blank")
//            showAlertMessage(title: "Invalid Phone NO", msg: "You must fill this field. Please try again.")
//
//        } else if(!Rules.validatePhone(self.PhoneNoTxt.text!))
//        {
//            showAlertMessage(title: "Invalid Phone NO", msg: "You have entered an invalid Phone NO. Please try again.")
//
//
//        }
        
    }
    func showAlertMessage(title: String, msg: String) {

        let alert = UIAlertController(title:title , message: msg, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
