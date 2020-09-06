//
//  AllStepsViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 21/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class AllStepsViewController: UIViewController {

    @IBOutlet weak var allStepTbl: UITableView!
    var AllSteps  = ["Basic Details","Income Verification","KYC Documents"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        allStepTbl.separatorStyle = .none
        allStepTbl.tableFooterView = UIView()
        
                self.navigationItem.title = "Approval Steps";
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
extension AllStepsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AllSteps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? AllStepsCell
        cell?.NameLbl.text = AllSteps[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("yes")
        if indexPath.row == 0 {
                guard let popupV = self.storyboard?.instantiateViewController(identifier: "BasicDetailsViewController") as? BasicDetailsViewController else { return  }
        //        popupV.modalPresentationStyle = .overCurrentContext
        //
        //               popupV.modalTransitionStyle = .crossDissolve
                        //self.present(popupV, animated: true, completion: nil)
            self.navigationController?.pushViewController(popupV, animated: true)
        } else
        if indexPath.row == 1 {
                guard let popupV = self.storyboard?.instantiateViewController(identifier: "IncomeVViewController") as? IncomeVViewController else { return  }
        //        popupV.modalPresentationStyle = .overCurrentContext
        //
        //               popupV.modalTransitionStyle = .crossDissolve
//                        self.present(popupV, animated: true, completion: nil)
            self.navigationController?.pushViewController(popupV, animated: true)

        } else if indexPath.row == 2 {
                guard let popupV = self.storyboard?.instantiateViewController(identifier: "KYCViewController") as? KYCViewController else { return  }
        //        popupV.modalPresentationStyle = .overCurrentContext
        //
        //               popupV.modalTransitionStyle = .crossDissolve
//                        self.present(popupV, animated: true, completion: nil)
            self.navigationController?.pushViewController(popupV, animated: true)

        }
    }

    func setupVerifyVC() {
        guard let popupV = self.storyboard?.instantiateViewController(identifier: "BasicDetailsViewController") as? BasicDetailsViewController else { return  }
        popupV.modalPresentationStyle = .overCurrentContext

               popupV.modalTransitionStyle = .crossDissolve
                self.present(popupV, animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
