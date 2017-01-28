//
//  VideoVC.swift
//  AMRockApp
//
//  Created by Luis  Costa on 26/01/17.
//  Copyright © 2017 Luis  Costa. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    // IBOutlets
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var webView: UIWebView!
    
    // amCell needed to label the video
    private var _amCell: AMCell!
    
    
    // Getter and Setter
    var amCell: AMCell {
        get {
            return _amCell
        }
        
        set {
            _amCell = newValue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Loading the video
        videoTitle.text = _amCell.videoTitle
        webView.loadHTMLString(_amCell.videoURL, baseURL: nil)
    }
    
    // Function that allow back to the previously ViewController
    @IBAction func backPressed(_ sender: UIButton) {
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

}
