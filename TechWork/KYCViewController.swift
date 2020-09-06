//
//  KYCViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 22/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class KYCViewController: UIViewController {
    
    @IBOutlet var PanCardNOTxt: UITextField!
    @IBOutlet var KYCTypeTxt: UITextField!
    @IBOutlet var KYCNoTxt: UITextField!
  

    @IBOutlet var submitBTn: UIButton!
    
    @IBOutlet var frontBTn: UIButton!
    @IBOutlet var backBTn: UIButton!
    @IBOutlet var kycfrontBTn: UIButton!
       @IBOutlet var kycbackBTn: UIButton!



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
                self.navigationItem.title = "KYC Details";
                let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.lightGray]
        //
                navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
    func RoundBorderBTN() {
        submitBTn.layer.cornerRadius = 10.0
           submitBTn.layer.borderWidth = 1;
           submitBTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
        frontBTn.layer.cornerRadius = 10.0
           frontBTn.layer.borderWidth = 1;
           frontBTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
        backBTn.layer.cornerRadius = 10.0
           backBTn.layer.borderWidth = 1;
           backBTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
        kycfrontBTn.layer.cornerRadius = 10.0
               kycfrontBTn.layer.borderWidth = 1;
               kycfrontBTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
            kycbackBTn.layer.cornerRadius = 10.0
               kycbackBTn.layer.borderWidth = 1;
               kycbackBTn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
      
    }
    func RoundPlaceHolder() {
        PanCardNOTxt.clipsToBounds = true;
           PanCardNOTxt.layer.cornerRadius = 10.0;
           PanCardNOTxt.layer.borderWidth = 1;
           PanCardNOTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
            PanCardNOTxt.attributedPlaceholder = NSAttributedString(string: "PAN CARD NO",
                                                              attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
             PanCardNOTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: PanCardNOTxt.frame.height))
             PanCardNOTxt.leftViewMode = .always
        
        KYCTypeTxt.clipsToBounds = true;
            KYCTypeTxt.layer.cornerRadius = 10.0;
            KYCTypeTxt.layer.borderWidth = 1;
            KYCTypeTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
             KYCTypeTxt.attributedPlaceholder = NSAttributedString(string: "KYC Document Type",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
              KYCTypeTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: KYCTypeTxt.frame.height))
              KYCTypeTxt.leftViewMode = .always
        

        AdddropDownBTninTXT()
        
        KYCNoTxt.clipsToBounds = true;
            KYCNoTxt.layer.cornerRadius = 10.0;
            KYCNoTxt.layer.borderWidth = 1;
            KYCNoTxt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1);
             KYCNoTxt.attributedPlaceholder = NSAttributedString(string: "KYC Document NO",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
              KYCNoTxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: KYCNoTxt.frame.height))
              KYCNoTxt.leftViewMode = .always
        
       
        
    
    }
    
    func AdddropDownBTninTXT() {
                let button = UIButton(type: .custom)
                button.setImage(UIImage(named: "Symbol 62"), for: .normal)
                button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -16, bottom: 0, right: 0)
                button.frame = CGRect(x: CGFloat(KYCTypeTxt.frame.size.width - 25), y: CGFloat(5), width: CGFloat(25), height: CGFloat(25))
        //        button.addTarget(self, action: #selector(self.refresh), for: .touchUpInside)
                KYCTypeTxt.rightView = button
                KYCTypeTxt.rightViewMode = .always
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
