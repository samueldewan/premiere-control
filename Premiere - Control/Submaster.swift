//
//  Submaster.swift
//  Premiere - Control
//
//  Created by Samuel Dewan on 2015-11-27.
//  Copyright © 2015 Samuel Dewan. All rights reserved.
//

import UIKit

class Submaster: NSObject {
    // MARK: Properties
    var values: [(fixture:Int, value:Double)]
    
    override init() {
        values = [(fixture:Int, value:Double)]()
    }
}
