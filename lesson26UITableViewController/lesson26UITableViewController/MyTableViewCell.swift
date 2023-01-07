//
//  MyTableViewCell.swift
//  lesson26UITableViewController
//
//  Created by Karen Vardanian on 08.01.2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func refresh(_ model: Model) {
        nameLabel.text = model.name
        detailLabel.text = model.lastName
    }

}
