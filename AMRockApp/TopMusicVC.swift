//
//  TopMusicVC.swift
//  AMRockApp
//
//  Created by Luis  Costa on 27/01/17.
//  Copyright © 2017 Luis  Costa. All rights reserved.
//

import UIKit

class TopMusicVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let names = ["R U Mine",
                 "Brick by Brick",
                 "Snap out of it",
                 "Crying Lightning",
                 "BrainStorm"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "MusicTableViewCell", for: indexPath) as? MusicTableViewCell {
            let index = indexPath.row
            let name = names[index]
            let song = Song(number: index + 1, name: name)
            print(song.sortedName())
            tableViewCell.updateMusicTitle(song: song)
            
            return tableViewCell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    @IBAction func buttonBackPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func topVideosPressedButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
