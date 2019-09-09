//
//  AnswersTableViewCell.swift
//  StackViewCellSample
//
//  Created by Daniel Alvarez on Sep/9/19.
//  Copyright © 2019 Daniel Alvarez. All rights reserved.
//

import UIKit

class AnswersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet weak var answersStackView: UIStackView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
