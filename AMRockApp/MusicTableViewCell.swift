//
//  MusicTableViewCell.swift
//  AMRockApp
//
//  Created by Luis  Costa on 27/01/17.
//  Copyright © 2017 Luis  Costa. All rights reserved.
//

import UIKit

class MusicTableViewCell: UITableViewCell {

    //IBOulet
    @IBOutlet weak var musicTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateMusicTitle(song: Song) {
        musicTitle.text = song.sortedName()
        print(musicTitle.text!)
    }

}
