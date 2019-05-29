//
//  CandiesViewController.swift
//  FavoriteThings
//
//  Created by Chelsea Troy on 5/28/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import UIKit

class CandiesViewController: UITableViewController {
    
    var candies: [Candy]?
    let repository = CandiesRepository()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.candies = repository.getItems()
        self.tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.candies?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let candy = self.candies?[indexPath.row] else {
            fatalError("The candy is missing!")
        }
            
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "candyCell") else {
            fatalError("Invalid Cell!")
        }
        cell.textLabel?.text = candy.name
        
        return cell
    }

}
