//
//  MeViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 22/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class MeViewController: UIViewController {

    @IBOutlet weak var mepTbl: UITableView!
    var AllSteps  = ["Profile Details","Bank Account","Referral", "Setting", "Logout"]
        var AllStepsMEImg  = ["me-account-24","me-home-32","me-rupee-32-2", "me-settings-32", "logout-rounded-left-32"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        allStepTbl.separatorStyle = .none
        mepTbl.tableFooterView = UIView()
//        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.lightGray]
//
//        navigationController?.navigationBar.titleTextAttributes = textAttributes
//        self.navigationController?.navigationBar.isHidden = false
//                navigationController?.navigationBar.topItem?.title = "Me"



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

extension MeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AllSteps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? AllStepsCell
        cell?.NameLbl.text = AllSteps[indexPath.row]
        cell?.iconIMG.image = UIImage(named: AllStepsMEImg[indexPath.row])
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("yes")
        if indexPath.row == 0 {
                guard let popupV = self.storyboard?.instantiateViewController(identifier: "BasicDetailsViewController") as? BasicDetailsViewController else { return  }
        //        popupV.modalPresentationStyle = .overCurrentContext
        //
        //               popupV.modalTransitionStyle = .crossDissolve
//                        self.present(popupV, animated: true, completion: nil)
            self.navigationController?.pushViewController(popupV, animated: true)

        } else
        if indexPath.row == 1 {
                guard let popupV = self.storyboard?.instantiateViewController(identifier: "AccountDViewController") as? AccountDViewController else { return  }
        //        popupV.modalPresentationStyle = .overCurrentContext
        //
        //               popupV.modalTransitionStyle = .crossDissolve
//                        self.present(popupV, animated: true, completion: nil)
            self.navigationController?.pushViewController(popupV, animated: true)

        } else if indexPath.row == 2 {
                guard let popupV = self.storyboard?.instantiateViewController(identifier: "ReferralViewController") as? ReferralViewController else { return  }
        //        popupV.modalPresentationStyle = .overCurrentContext
        //
        //               popupV.modalTransitionStyle = .crossDissolve
//                        self.present(popupV, animated: true, completion: nil)
            self.navigationController?.pushViewController(popupV, animated: true)

        }  else if indexPath.row == 3 {
                       guard let popupV = self.storyboard?.instantiateViewController(identifier: "SettingViewController") as? SettingViewController else { return  }
               //        popupV.modalPresentationStyle = .overCurrentContext
               //
               //               popupV.modalTransitionStyle = .crossDissolve
//                               self.present(popupV, animated: true, completion: nil)
            self.navigationController?.pushViewController(popupV, animated: true)

               }  else if indexPath.row == 4 {
                                      guard let popupV = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else { return  }
                              //        popupV.modalPresentationStyle = .overCurrentContext
                              //
                              //               popupV.modalTransitionStyle = .crossDissolve
               //                               self.present(popupV, animated: true, completion: nil)
                           self.navigationController?.pushViewController(popupV, animated: true)

                              }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
