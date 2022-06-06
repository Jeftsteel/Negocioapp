//
//  CustomCell.swift
//  Negocioapp
//
//  Created by Cristian guillermo Romero garcia on 06/06/22.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var menuView: UIView!
   
    @IBOutlet weak var menuimg: UIImageView!
    @IBOutlet weak var menuLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
