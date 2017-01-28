//
//  AMTableViewCell.swift
//  AMRockApp
//
//  Created by Luis  Costa on 26/01/17.
//  Copyright © 2017 Luis  Costa. All rights reserved.
//

import UIKit

class AMTableViewCell: UITableViewCell {

    // IBOutlets
    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // Update the Cell with new info
    func updateCellWithInfo(amCell: AMCell) {
        videoTitle.text = amCell.videoTitle
        // TODO update imageView
        
        // Converting string into url
        let url = URL(string: amCell.imageVideo)
        
        // Create a new thread
        // Background thread
        DispatchQueue.global().async {
            
            do {
                let data = try Data(contentsOf: url!)
                // if does not throw a error
                // update in the main thread
                DispatchQueue.global().sync {
                    self.videoImage.image = UIImage(data: data)
                }
            } catch {
                print("Deu merda")
            }
        }
        
    }


}
