//
//  ListEntryTableViewController.swift
//  ListExample
//
//  Created by John Alexander on 27/01/2019.
//

import UIKit

class ListEntryTableViewController: UITableViewController {

    //MARK: Properties
    var listEntries = [Needed]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleListEntries()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listEntries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Table view cells are reused and should be dequeued using a cell identifier
        let cellIdentifier = "ListEntryTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier,
                                                       for: indexPath) as? ListEntryTableViewCell
            else {
                fatalError("The dequeued cell is not an instance of ListEntryTableViewCell.")
            }
        let listEntry = listEntries[indexPath.row]
        cell.itemName.text = listEntry.name
        cell.shopName.text = listEntry.shop
        cell.bought.text = listEntry.purchased ? "✔️" : " "
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    private func loadSampleListEntries(){
        let needed1 = Needed(name: "Toothpaste",shop: "Lidl", purchased: false)
        let needed2 = Needed(name: "Felix", shop: "Sainsbury", purchased: true)
        let needed3 = Needed(name: "Yogurt", shop: "Lidl", purchased: false)
        
        listEntries += [needed1, needed2, needed3]
    }
    
}
