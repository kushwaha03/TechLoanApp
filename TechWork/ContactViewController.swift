//
//  ContactViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 23/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet var textTxt: UITextField!
    @IBOutlet var submitBTn: UIButton!
    var iscallForgotPw = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        textTxt.clipsToBounds = true;
        textTxt.layer.cornerRadius = 10.0;
        textTxt.layer.borderWidth = 1;
        textTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
        submitBTn.layer.cornerRadius = 10.0
        submitBTn.layer.borderWidth = 1;
        submitBTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
        
        textTxt.attributedPlaceholder = NSAttributedString(string: "Please Write Something Here!",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        textTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: textTxt.frame.height))
        textTxt.leftViewMode = .always
        
        self.hideKeyBoardTappedAround()
        
        //Mark:Hiding & Showing Keyboard Animation
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
                self.navigationItem.title = "Contact US";
                let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.lightGray]
        //
                navigationController?.navigationBar.titleTextAttributes = textAttributes
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
