//
//  EmojiTableViewController.swift
//  tableviewSolutionE2
//
//  Created by Jimenez on 9/22/21.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["🧸", "🍎", "👻", "⚽️", "🤠"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: how many cells
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    //MARK: What is inside the cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = emojis[indexPath.row]

        return cell
    }
    
}
