//
//  ReferralViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 22/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class ReferralViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
                self.navigationItem.title = "Referral";
                let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.lightGray]
        //
                navigationController?.navigationBar.titleTextAttributes = textAttributes
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
