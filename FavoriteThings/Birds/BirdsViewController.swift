//
//  BirdsViewController.swift
//  FavoriteThings
//
//  Created by Chelsea Troy on 5/28/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import UIKit

class BirdsViewController: UITableViewController {
    
    var birds: [Bird]?
    let repository = BirdsRepository()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Birds!"
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.birds = repository.getItems().sorted(by: >)
        self.tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.birds?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let bird = self.birds?[indexPath.row] else {
            fatalError("The bird flew away!")
        }
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "birdCell") else {
            fatalError("Invalid Cell!")
        }
        cell.textLabel?.text = bird.name
        
        return cell
    }}
