//
//  CollectionDelegate.swift
//  FavoriteThings
//
//  Created by Chelsea Troy on 5/28/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import Foundation

protocol CollectionDelegate {
    associatedtype collectionItem
    func getItems() -> [collectionItem]
}
