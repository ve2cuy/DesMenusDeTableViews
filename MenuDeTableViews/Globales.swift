//
//  Globales.swift
//  MenuDeTableViews
//
//  Created by Alain on 17-11-27.
//  Copyright © 2017 Alain. All rights reserved.
//
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

import Foundation

enum TypeDonnées:Int {
    case ingrédients
    case sélections
    
    var valeur: Int {
        return self.rawValue
    }
    
} // TypeDonnées

enum Ingrédients:Int {
    case protéines
    case fruitsDeMer
    case fibres
} // Ingrédients

struct Globale {
    static let menuDesIngrédients = [
        "Protéines",
        "Fruits de mer",
        "Produits laitiers",
        "Amuses-Bouches"
    
    ]
    
    static var donnéesDesTableViews = [

        // tableview 01 - Les protéines
        [
            // Les options à afficher dans le tableView
            ["Poulet", "Porc", "Boeuf", "Canard", "Écureil"],
            // Les choix de l'utilisateur
            Array<IndexPath>()
        ], // tableview 01 - Les protéines

        // tableview 02 - Les fruits de mer
        [
            // Les options à afficher dans le tableView
            ["Ballon", "Vague", "Sel", "Sable", "Déchet"],
            // Les choix de l'utilisateur
            Array<IndexPath>()
        ], // tableview 02 - Les fruits de mer

        // tableview 03 - Les produits laitier
        [
            // Les options à afficher dans le tableView
            ["Lait", "Beurre", "Fromage"],
            // Les choix de l'utilisateur
            Array<IndexPath>()
        ], // tableview 03 - Les produits laitier

        // tableview 04 - Les 'Amuses-Bouches'
        [
            // Les options à afficher dans le tableView
            ["Chips", "Pretzels", "Olives"],
            // Les choix de l'utilisateur
            Array<IndexPath>()
        ] // tableview 04
        
    ]
}

