//
//  ListEntryTableViewCell.swift
//  ListExample
//
//  Created by John Alexander on 27/01/2019.
//

import UIKit

class ListEntryTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var shopName: UITextField!
    @IBOutlet weak var itemName: UITextField!
    @IBOutlet weak var bought: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
