//
//  FAQViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 23/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class FAQViewController: UIViewController {

    @IBOutlet weak var settingTbl: UITableView!
    var AllSteps  = ["Applied to Loan","Profile has Rejected", " ReApply Again","Already Paid for Settle", "Others"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        allStepTbl.separatorStyle = .none
//        settingTbl.tableFooterView = UIView()
        
               self.navigationItem.title = "FAQs";
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
extension FAQViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AllSteps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? AllStepsCell
        cell?.NameLbl.text = AllSteps[indexPath.row]
        return cell!
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
