//
//  HomeCell.swift
//  TechWork
//
//  Created by kashee kushwaha on 25/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {

    @IBOutlet weak var applyBtn: UIButton!
    @IBOutlet weak var iconIMG: UIImageView!
    @IBOutlet weak var rupeesLbl: UILabel!
    @IBOutlet weak var repaymentLbl: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        rupeesLbl.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
