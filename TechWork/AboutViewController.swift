//
//  AboutViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 23/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "A ", style: .plain, target: nil, action: nil)
        self.navigationItem.title = "About";
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
