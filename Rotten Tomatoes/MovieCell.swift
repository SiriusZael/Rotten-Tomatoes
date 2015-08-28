//
//  MovieCell.swift
//  Rotten Tomatoes
//
//  Created by Matt Rucker on 8/26/15.
//  Copyright (c) 2015 tumblr. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}