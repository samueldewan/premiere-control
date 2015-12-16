//
//  PositionPropriety.swift
//  Premiere - Control
//
//  Created by Samuel Dewan on 2015-12-07.
//  Copyright © 2015 Samuel Dewan. All rights reserved.
//

import UIKit

class PositionPropriety: Propriety {
    // MARK: Constants
    static let sortOrder = 50
    
    // MARK: Protocol Variables
    var parent: Fixture
    var value: ProprietyType {
        didSet {
            switch value {
            case .Position(let pan, let tilt):
                print("\(pan),\(tilt)") // TODO
            default:
                value = oldValue
            }
        }
    }
    var index: Int
    var depth: Int
    var maxValue: Int {
        return Int(pow(2.0, Double(depth)))
    }
    var name: String
    
    // MARK: Other Variables
    
    private var unwrappedValue: (Int,Int)? {
        switch value {
        case .Position(let pan, let tilt):
            return (pan, tilt)
        default:
            return nil
        }
    }
    
    // MARK: Initilization
    required init (index: Int, parent: Fixture) {
        value = ProprietyType.Position(0, 0)
        self.index = index
        self.parent = parent
        self.depth = 8
        self.name = "Position"
    }
    
    // MARK: Protocol Functions
    func getDMXValues() -> [UInt8] {
        return[0]
    }
    
    func setUpTableCell(cell: UITableViewCell) -> UITableViewCell {
        return cell
    }
}