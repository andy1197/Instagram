//
//  CommentCell.swift
//  Instagram
//
//  Created by Andy Wang on 10/9/20.
//  Copyright © 2020 andywang1197@icloud.com. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
