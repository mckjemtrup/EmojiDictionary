//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Michael Kjemtrup on 24/02/2017.
//  Copyright © 2017 Michael Kjemtrup. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var Tableview: UITableView!
    
    var ikoner = ["😇","💩","😎","🤑","💤","😥","😔","😘","😡","😈"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Tableview.dataSource = self
        Tableview.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ikoner.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = ikoner[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let ikon = ikoner[indexPath.row]
        performSegue(withIdentifier: "MoveSeque", sender: "☠️")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(sender)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated..
    }


}

