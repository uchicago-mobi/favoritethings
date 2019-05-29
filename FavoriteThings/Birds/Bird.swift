//
//  Bird.swift
//  FavoriteThings
//
//  Created by Chelsea Troy on 5/28/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import Foundation
import UIKit

struct Bird: Comparable {
    let name: String
    let colors: [UIColor]
    let weight: Int
    let cuteness: Int
    let scariness: Int
    
    var overallExcellence: Int {
        get {
            let score = self.colors.count + (self.cuteness * 2) - self.scariness
            print("\(name) overall excellence: \(score)")
            return score
        }
    }
    
    static func < (lhs: Bird, rhs: Bird) -> Bool {
        return lhs.overallExcellence < rhs.overallExcellence
    }
}
