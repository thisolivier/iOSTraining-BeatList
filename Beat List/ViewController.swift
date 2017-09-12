//
//  ViewController.swift
//  Beat List
//
//  Created by Olivier Butler on 11/09/2017.
//  Copyright © 2017 Olivier Butler. All rights reserved.
//
import Foundation
import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return funArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = funArray[indexPath.row]
        return cell
    }
    
    
}

class ViewController: UIViewController {
    var funArray = ["Jamie sucks eggs", "A lone human stalks a bear", "Many feet have a army", "Feathers are light", "I like long roads"]
    @IBOutlet weak var masterTable: UITableView!
    @IBOutlet weak var taskField: UITextField!
    @IBAction func beatButtonPress(_ sender: UIButton) {
        let maybeContent = taskField.text
        if let content:String = maybeContent {
            funArray.append(content)
            taskField.text = ""
            masterTable.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        masterTable.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

