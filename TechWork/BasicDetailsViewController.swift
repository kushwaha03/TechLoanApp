//
//  BasicDetailsViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 21/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class BasicDetailsViewController: UIViewController {
    
    @IBOutlet var firstNTxt: UITextField!
    @IBOutlet var MiddleNTxt: UITextField!
    @IBOutlet var LastNTxt: UITextField!
    @IBOutlet var DobTxt: UITextField!
    @IBOutlet var HighrOTxt: UITextField!

    @IBOutlet var submitBTn: UIButton!
    var iscallForgotPw = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
   
        submitBTn.layer.cornerRadius = 10.0
        submitBTn.layer.borderWidth = 1;
        submitBTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
        
     
        
        self.hideKeyBoardTappedAround()
        
        //Mark:Hiding & Showing Keyboard Animation
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
        
        RoundPlaceHolder()
        
                self.navigationItem.title = "Profile Details";
                let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.lightGray]
        //
                navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
    func RoundPlaceHolder() {
        firstNTxt.clipsToBounds = true;
           firstNTxt.layer.cornerRadius = 10.0;
           firstNTxt.layer.borderWidth = 1;
           firstNTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
            firstNTxt.attributedPlaceholder = NSAttributedString(string: "First Name",
                                                              attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
             firstNTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: firstNTxt.frame.height))
             firstNTxt.leftViewMode = .always
        
        MiddleNTxt.clipsToBounds = true;
            MiddleNTxt.layer.cornerRadius = 10.0;
            MiddleNTxt.layer.borderWidth = 1;
            MiddleNTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
             MiddleNTxt.attributedPlaceholder = NSAttributedString(string: "Middle Name",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
              MiddleNTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: MiddleNTxt.frame.height))
              MiddleNTxt.leftViewMode = .always
        
        LastNTxt.clipsToBounds = true;
            LastNTxt.layer.cornerRadius = 10.0;
            LastNTxt.layer.borderWidth = 1;
            LastNTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
             LastNTxt.attributedPlaceholder = NSAttributedString(string: "Last Name",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
              LastNTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: LastNTxt.frame.height))
              LastNTxt.leftViewMode = .always
        
        DobTxt.clipsToBounds = true;
            DobTxt.layer.cornerRadius = 10.0;
            DobTxt.layer.borderWidth = 1;
            DobTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
             DobTxt.attributedPlaceholder = NSAttributedString(string: "Date of Birth",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
              DobTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: DobTxt.frame.height))
              DobTxt.leftViewMode = .always
        
        HighrOTxt.clipsToBounds = true;
            HighrOTxt.layer.cornerRadius = 10.0;
            HighrOTxt.layer.borderWidth = 1;
            HighrOTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
             HighrOTxt.attributedPlaceholder = NSAttributedString(string: "Higher Qualification",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
              HighrOTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: HighrOTxt.frame.height))
              HighrOTxt.leftViewMode = .always
        AdddropDownBTninTXT()
    }
    
    func AdddropDownBTninTXT() {
                let button = UIButton(type: .custom)
                button.setImage(UIImage(named: "Symbol 62"), for: .normal)
                button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -16, bottom: 0, right: 0)
                button.frame = CGRect(x: CGFloat(HighrOTxt.frame.size.width - 25), y: CGFloat(5), width: CGFloat(25), height: CGFloat(25))
        //        button.addTarget(self, action: #selector(self.refresh), for: .touchUpInside)
                HighrOTxt.rightView = button
                HighrOTxt.rightViewMode = .always
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
