//
//  AMCell.swift
//  AMRockApp
//
//  Created by Luis  Costa on 26/01/17.
//  Copyright © 2017 Luis  Costa. All rights reserved.
//

import Foundation

class AMCell {

    private var _imageVideo: String!
    private var _videoTitle: String!
    private var _videoURL: String!
    
    init(imageVideo: String, videoTittle: String, videoURL: String) {
        _imageVideo = imageVideo
        _videoTitle = videoTittle
        _videoURL = videoURL
    }
    
    // Getters
    var imageVideo: String {return _imageVideo}
    var videoTitle: String {return _videoTitle}
    var videoURL: String {return _videoURL}
}
