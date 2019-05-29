//
//  BirdsService.swift
//  FavoriteThings
//
//  Created by Chelsea Troy on 5/28/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import Foundation
import UIKit

class BirdsRepository: CollectionDelegate {
    typealias collectionItem = Bird
    
    func getItems() -> [Bird] {
        return [
            Bird(name: "Maccaw", colors: [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.green], weight: 3, cuteness: 3, scariness: 0),
            Bird(name: "Major Mitchell's Cockatoo", colors: [UIColor.red, UIColor.white, UIColor.purple], weight: 2, cuteness: 4, scariness: 0),
            Bird(name: "Finch", colors: [UIColor.brown, UIColor.green], weight: 1, cuteness: 5, scariness: 0),
            Bird(name: "Red-Shouldered Hawk", colors: [UIColor.red, UIColor.brown], weight: 2, cuteness: 0, scariness: 3),
            Bird(name: "Black Baza", colors: [UIColor.brown, UIColor.white, UIColor.black], weight: 2, cuteness: 3, scariness: 2)
        ]
    }
}
