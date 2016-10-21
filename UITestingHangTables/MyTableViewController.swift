//
//  MyTableViewController.swift
//  UITestingHangTables
//
//  Created by Jason Williams on 10/20/16.
//  Copyright © 2016 DigiTar, Inc. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 500;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "MyCell");
        if cell == nil {
            cell = UITableViewCell(style:.subtitle, reuseIdentifier: "MyCell");
        }
        cell?.textLabel?.text = "Title";
        cell?.detailTextLabel?.text = "Subtitle";
        
        return cell!;
    }
    
}

