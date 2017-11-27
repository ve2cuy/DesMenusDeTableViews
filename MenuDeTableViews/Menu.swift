//
//  Menu.swift
//  MenuDeTableViews
//
//  Created by Alain on 17-11-27.
//  Copyright © 2017 Alain. All rights reserved.
//

import UIKit

class Menu: UIViewController, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! IngrédientsViewController
        // let index = tableView.indexPath(for: sender as! UITableViewCell)

        switch segue.identifier! {
        case "viandes": destination.numéroDuTableView = 0
        case "fruitsDeMer": destination.numéroDuTableView = 1
        case "produitsLaitier": destination.numéroDuTableView = 2
        default: exit(0)
        }
    } //  prepare(for segue

    
  
    /*
    // **********************************************************
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Globale.menuDesIngrédients.count
    } // numberOfRowsInSection

    // **********************************************************
    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = Globale.menuDesIngrédients[indexPath.row]
        print("Je suis la cellule menu no.", indexPath.row)
        //cell.detailTextLabel?.text = "yo"
        return cell
    } // cellForRowAt
*/
}
