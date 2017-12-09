//
//  TableViewController01.swift
//  MenuDeTableViews
//
//  Created by Alain on 17-11-27.
//  Copyright © 2017 Alain. All rights reserved.
//  --------------------------------------------------------------------------------------------
//  MARK: - Note importante!
//  ============================================================================================
//  À l'usage exclusif des étudiants et étudiantes de
//  Techniques d'Intégration Multimédia
//  du cégep de Saint-Jérôme.
//  --------------------------------------------------------------------------------------------
//  Il est interdit de reproduire, en tout ou en partie, à des fins commerciales,
//  le code source, les scènes, les éléments graphiques, les classes et
//  tout autre contenu du présent projet sans l’autorisation écrite de l'auteur.
//
//  Pour obtenir l’autorisation de reproduire ou d’utiliser, en tout ou en partie,
//  le présent projet, veuillez communiquer avec:
//
//  Alain Boudreault, aboudrea@cstj.qc.ca, alain.boudreault@me.com
//
//  ============================================================================================
import UIKit
import os.log

// **********************************************************
class IngrédientsViewController: UITableViewController {

    public var numéroDuTableView:Int!
    
    lazy var ingrédients = Globale.donnéesDesTableViews[numéroDuTableView][TypeDonnées.ingrédients.valeur] as! Array<String>
    lazy var sélections = Globale.donnéesDesTableViews[numéroDuTableView][TypeDonnées.sélections.valeur] as! Array<IndexPath>
    
    // **********************************************************
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("IngrédientsViewController-ViewDidLoad", log: AppDelegate.appDelegate_log, type: .info)

    } // viewDidLoad
    
    // **********************************************************
    override func viewWillAppear(_ animated: Bool) {
        // Réafficher les dernières sélections de l'utilisateur
        for index in sélections {
            tableView.selectRow(at: index, animated: true, scrollPosition: .none)
            tableView.cellForRow(at: index)?.accessoryType = .checkmark
        }
   } // viewDidAppear

    // **********************************************************
    // Utiliser cette méthode pour sauvegarder les choix de l'utilisateur dans la classe Globales
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        #if DEBUG
            print(tableView.indexPathsForSelectedRows as Any)
        #endif
        Globale.donnéesDesTableViews[numéroDuTableView][TypeDonnées.sélections.valeur] = tableView.indexPathsForSelectedRows ?? []
    } // viewWillDisappear
    
 
    // MARK: - Table view data source
    // **********************************************************
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingrédients.count
    } // numberOfRowsInSection

    // **********************************************************
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.accessoryType = cell.isSelected ? .checkmark : .none
        cell.selectionStyle = .none // Pour ne pas afficher la cellule en mode 'selected'
        cell.textLabel?.text = ingrédients[indexPath.row]
        return cell
    } // cellForRowAt
 
    // Pour l'affichage du 'checkMark' à droite lors d'une sélectiom
    // **********************************************************
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    } // didSelectRowAt
    
    // Pour effacer le 'checkMark' à droite lors d'une désélectiom
    // **********************************************************
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
    } // didDeselectRowAt
    
}
