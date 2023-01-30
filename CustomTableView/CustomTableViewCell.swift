//
//  CustomTableViewCell.swift
//  CustomTableView
//
//  Created by Cristofer Silva on 29/01/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var seriesImage: UIImageView!
    @IBOutlet weak var serieTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
