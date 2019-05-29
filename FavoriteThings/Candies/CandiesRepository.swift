//
//  CandiesService.swift
//  FavoriteThings
//
//  Created by Chelsea Troy on 5/28/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import Foundation

class CandiesRepository: CollectionDelegate {
    typealias collectionItem = Candy
    
    func getItems() -> [Candy] {
        return [
            Candy(name: "Reeses", fruitiness: 0, chocolatiness: 3, nuttiness: 5),
            Candy(name: "Gummy Bears", fruitiness: 5, chocolatiness: 0, nuttiness: 0),
            Candy(name: "Arancini", fruitiness: 3, chocolatiness: 4, nuttiness: 2),
            Candy(name: "Date Nut Bites", fruitiness: 3, chocolatiness: 0, nuttiness: 4),
            Candy(name: "Peanut Brittle", fruitiness: 0, chocolatiness: 0, nuttiness: 5),
        ]
    }
    
}
