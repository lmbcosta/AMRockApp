//
//  ViewController.swift
//  AMRockApp
//
//  Created by Luis  Costa on 26/01/17.
//  Copyright © 2017 Luis  Costa. All rights reserved.
//

import UIKit

// New Protocols
class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // List with data
    var cells = [AMCell]()
    var playList = [Song]()
    var buttonOn: Int = 1
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var topVideosButton: UIButton!
    @IBOutlet weak var topSongsButton: UIButton!
    
    
    // Data
    let urls = ["<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VQH8ZTgna3Q\" frameborder=\"0\" allowfullscreen></iframe>",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/riV77WoFCBw\" frameborder=\"0\" allowfullscreen></iframe>",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/H8tLS_NOWLs\" frameborder=\"0\" allowfullscreen></iframe>",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fLsBJPlGIDU?list=PL5X9IpxHCefJW_vCq_I5bNRIqCVkk04L9\" frameborder=\"0\" allowfullscreen></iframe>",
                "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/30w8DyEJ__0?list=PLEbyOkhs62_3qD5UXvlKDW4N0adl-8Wa8\" frameborder=\"0\" allowfullscreen></iframe>"]
    
    let images = ["https://static.stereogum.com/uploads/2012/02/Arctic-Monkeys-R-U-Mine-608x348.jpg",
                  "https://i.ytimg.com/vi/riV77WoFCBw/maxresdefault.jpg",
                  "https://static.stereogum.com/uploads/2014/06/Arctic-Monkeys-Snap-Out-Of-It-video.jpg",
                  "https://i.ytimg.com/vi/fLsBJPlGIDU/0.jpg",
                  "https://espalhafactos.com/wp-content/uploads/2015/01/101170368_640.jpg"]
    
    let names = ["R U Mine", "Brick by Brick", "Snap out of it", "Crying Lightning","BrainStorm"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Appending new Cell to the list
        for i in 0..<5 {
            cells.append(AMCell(imageVideo: images[i], videoTittle: names[i], videoURL: urls[i]))
            
            // Adding songs to the playList
            let song = Song(number: i + 1, name: names[i])
            playList.append(song)
        }
    }
    
    
    // Asks the data source for a cell to insert 
    // in a particular location of the table view.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "AMTableViewCell", for: indexPath) as? AMTableViewCell {
                
            // Get the data from thr list
            let cell = cells[indexPath.row]
                
            //Update date
            tableViewCell.updateCellWithInfo(amCell: cell)
                
            return tableViewCell
        } else {
            return UITableViewCell()
        }
    }


        
        
        
        
    
    // How many cells do we have to present
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    // Function when user taps on the row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Get data fromtouched cell
        let touchedCellData = cells[indexPath.row]
        
        // perform segue
        performSegue(withIdentifier: "VideoVC", sender: touchedCellData)
    }
    
    
    
    // Notifies ViewControler that this segue is about to be performed
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Preparing destination
        if let destination = segue.destination as? VideoVC {
            // Casting the sender
            if let cell = sender as? AMCell {
                // Passing the new cell for the ViewController destination
                destination.amCell = cell
            }
        }
    }
    
    @IBAction func topSongsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "TopMusicVC", sender: nil)
    }
    
    
}
