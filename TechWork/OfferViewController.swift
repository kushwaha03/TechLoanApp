//
//  OfferViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 22/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class OfferViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.lightGray]
//
//        navigationController?.navigationBar.titleTextAttributes = textAttributes
//        self.navigationController?.navigationBar.isHidden = false
//                          navigationController?.navigationBar.topItem?.title = "Offer"
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

extension OfferViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "Offer " + String(indexPath.row)
        cell?.textLabel?.textAlignment = .center
        return cell!
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
