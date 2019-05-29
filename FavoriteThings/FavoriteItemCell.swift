//
//  FavoriteItemCell.swift
//  FavoriteThings
//
//  Created by Chelsea Troy on 5/28/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import UIKit

class FavoriteItemCell: UITableViewCell {
    @IBOutlet weak var favoriteItemTitle: UILabel!
    @IBOutlet weak var favoriteItemDetail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
