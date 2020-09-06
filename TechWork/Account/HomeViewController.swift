//
//  HomeViewController.swift
//  TechWork
//
//  Created by kashee kushwaha on 21/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var photoSliderView: PhotoSliderView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
//        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.lightGray]
//
//        navigationController?.navigationBar.titleTextAttributes = textAttributes
//        self.navigationController?.navigationBar.isHidden = false
//                      navigationController?.navigationBar.topItem?.title = "Home"


    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let images: [UIImage] = [UIImage(named: "offer")!,
                                 UIImage(named: "offer1")!,
                                 UIImage(named: "offer2")!,
                                 UIImage(named: "offer3")!,
                                 UIImage(named: "offer5")!,
                                 UIImage(named: "offer4")!]
        
        photoSliderView.configure(with: images)
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


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? HomeCell
        cell?.rupeesLbl.text = "₹ " + String(indexPath.row+1) + "0000"
        cell?.repaymentLbl.text = "Repayment upto " + String(indexPath.row+1) + " months "
        cell?.applyBtn.addTarget(self, action: #selector(appliedNow), for: UIControl.Event.touchUpInside)
        return cell!
    }
    @objc func appliedNow() {

              guard let popupV = self.storyboard?.instantiateViewController(identifier: "AllStepsViewController") as? AllStepsViewController else { return  }
        self.navigationController?.pushViewController(popupV, animated: true)
    }

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("yes")
        
                    guard let popupV = self.storyboard?.instantiateViewController(identifier: "AllStepsViewController") as? AllStepsViewController else { return  }
              self.navigationController?.pushViewController(popupV, animated: true)

    
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
