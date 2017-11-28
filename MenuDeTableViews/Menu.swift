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
        
        for celluleIngrédientSélectionné in Globale.donnéesDesTableViews[categorie][TypeDonnées.sélections.valeur] as! [IndexPath] {
            nomIngrédients += (Globale.donnéesDesTableViews[categorie][TypeDonnées.ingrédients.valeur] as! [String])[celluleIngrédientSélectionné.row] + ", "
        }
        return nomIngrédients
    }
    
    // Afficher les sélections de l'utilisateur
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! IngrédientsViewController
        
        sélectionCourante = tableView.indexPath(for: sender as! UITableViewCell)!.row
        destination.numéroDuTableView = sélectionCourante
        destination.title = Globale.menuDesIngrédients[sélectionCourante]
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
        cell.selections.text = obtenirLesIngrédientsSélectionnés(categorie: index)
        return cell
    } // cellForRowAt

}
