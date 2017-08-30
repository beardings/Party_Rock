//
//  PartyCell.swift
//  Party_Rock
//
//  Created by Nikolas Ponomarov on 30.08.17.
//  Copyright © 2017 Nikolas Ponomarov. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
    }
}
