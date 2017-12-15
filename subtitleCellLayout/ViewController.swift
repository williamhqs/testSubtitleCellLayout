//
//  ViewController.swift
//  subtitleCellLayout
//
//  Created by William Hu on 12/15/17.
//  Copyright © 2017 William Hu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableViewAutomaticDimension
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "defaultCell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "subtitleCell")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 1 {
            let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "subtitleCell")
            cell.textLabel?.numberOfLines = 0
            cell.textLabel?.text = "A Long text...A Long textA Long textA Long textA Long textA Long textA Long textA Long textA Long textA Long textA Long textA Long textA Long textA Long text1234567788"
            cell.detailTextLabel?.numberOfLines = 0
            cell.detailTextLabel?.text =  "A Long text...A Long textA Long textA Long textA Long textA Long textA Long textA Long textA Long textA Long textA Long textA Long textA Long textA Long text12345677"
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell")
            
        cell?.textLabel!.text = "A long text..."
            cell?.textLabel?.numberOfLines = 0
            return cell!
        
    }
    
}

