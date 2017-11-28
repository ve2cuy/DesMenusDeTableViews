//
//  Menu.swift
//  MenuDeTableViews
//
//  Created by Alain on 17-11-27.
//  Copyright © 2017 Alain. All rights reserved.
//

import UIKit

class Menu: UIViewController, UITableViewDataSource {

    private var sélectionCourante = 0
    
    @IBOutlet weak var tableView: UITableView!
   
    func obtenirLesIngrédientsSélectionnés(categorie: Int) -> String {
        var nomIngrédients = ""
        
        for celluleIngrédientSélectionné in Globale.donnéesDesTableViews[categorie][1] as! [IndexPath] {
            nomIngrédients += (Globale.donnéesDesTableViews[categorie][0] as! [String])[celluleIngrédientSélectionné.row] + ", "
        }
        return nomIngrédients
       // return (Globale.donnéesDesTableViews[categorie][0] as! [String]).joined(separator: ", ")
    }
    
    // Afficher les sélections de l'utilisateur
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
/*        print("SélectionCourante = \(sélectionCourante)")
        let indexPathCatégorie = IndexPath(item: 0, section: sélectionCourante)
        let cellule = tableView.cellForRow(at: indexPathCatégorie ) as! CelluleIngredient
        cellule.selections.text = obtenirLesIngrédientsSélectionnés()
  */  }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! IngrédientsViewController
        
        sélectionCourante = tableView.indexPath(for: sender as! UITableViewCell)!.row
        destination.numéroDuTableView = sélectionCourante
        destination.title = Globale.menuDesIngrédients[sélectionCourante]
        /*
        switch segue.identifier! {
        case "viandes": destination.numéroDuTableView = 0
        case "fruitsDeMer": destination.numéroDuTableView = 1
        case "produitsLaitier": destination.numéroDuTableView = 2
        default: exit(0)
        }
 */
    } //  prepare(for segue

    
    // **********************************************************
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Globale.menuDesIngrédients.count
    } // numberOfRowsInSection

    // **********************************************************
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CelluleIngredient = tableView.dequeueReusableCell(withIdentifier: "cellule", for: indexPath) as! CelluleIngredient
        let index = indexPath.row
        cell.categorie.text = Globale.menuDesIngrédients[index]
        print("Je suis la cellule menu no.", index)
        cell.selections.text = obtenirLesIngrédientsSélectionnés(categorie: index)
        
        //cell.detailTextLabel?.text = "yo"
        return cell
    } // cellForRowAt

}
