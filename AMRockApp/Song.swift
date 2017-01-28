//
//  Structures.swift
//  AMRockApp
//
//  Created by Luis  Costa on 27/01/17.
//  Copyright © 2017 Luis  Costa. All rights reserved.
//

import Foundation

// Class that represent a song on a playlist
class Song {
    private var _number: Int!
    private var _name: String!
    
    init(number: Int, name: String) {
        _number = number
        _name = name
    }
    
    var number: Int {
        get {return _number}
    }
    
    var name: String {
        get {return _name}
    }
    
    func sortedName() -> String {
        let name = String(_number).appending(". ").appending(_name)
        return name
    }
}

