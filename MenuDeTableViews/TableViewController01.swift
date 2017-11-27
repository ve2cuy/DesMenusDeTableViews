//
//  TableViewController01.swift
//  MenuDeTableViews
//
//  Created by Alain on 17-11-27.
//  Copyright © 2017 Alain. All rights reserved.
//

import UIKit

class TableViewController01: UITableViewController {

    public var numéroDuTableView:Int = 0
    
    lazy var contenu = Globale.donnéesDesTableViews[numéroDuTableView][TypeDonnées.options.rawValue] as! Array<String>
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    } // viewDidLoad
    
    override func viewDidAppear(_ animated: Bool) {
        // Réafficher les dernières sélections de l'utilisateur
        for index in Globale.donnéesDesTableViews[numéroDuTableView][TypeDonnées.sélections.rawValue] as! Array<IndexPath> {
            tableView.selectRow(at: index, animated: true, scrollPosition: .none)
            tableView.cellForRow(at: index)?.accessoryType = .checkmark
        }
   } // viewDidAppear

    // Utiliser cette méthode pour sauvegarder les choix de l'utilisateur dans la classe Globales
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        #if DEBUG
            print(tableView.indexPathsForSelectedRows!)
        #endif
        Globale.donnéesDesTableViews[numéroDuTableView][TypeDonnées.sélections.rawValue] = tableView.indexPathsForSelectedRows ?? []
    } // viewWillDisappear
    
 
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenu.count
    } // numberOfRowsInSection

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.accessoryType = cell.isSelected ? .checkmark : .none
        cell.selectionStyle = .none // Pour ne pas afficher la cellule en mode 'selected'
        cell.textLabel?.text = contenu[indexPath.row]
        return cell
    } // cellForRowAt
 
    // Pour l'affichage du 'checkMark' à droite lors d'une sélectiom
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    } // didSelectRowAt
    
    // Pour effacer le 'checkMark' à droite lors d'une désélectiom
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
    } // didDeselectRowAt
    
    // MARK: - Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    }

}
