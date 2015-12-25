//
//  Data.swift
//  Premiere - Control
//
//  Created by Samuel Dewan on 2015-12-25.
//  Copyright © 2015 Samuel Dewan. All rights reserved.
//

import Foundation

struct Data {
    // MARK: Variables
    static var fixtures = [Fixture]()
    static var submasters = [Submaster]()
    static var cues = [Cue]()
    
    static var dmx = DMX()
    
    // MARK: Fixture functions
    static func getFixturesWithIndex(index: Int) -> [Fixture] {
        var results = [Fixture]()
        for i in fixtures {
            if i.index == index {
                results.append(i)
            }
        }
        return results
    }
    
    // MARK: Submaster functions
    
    // MARK: Cue functions
    
}