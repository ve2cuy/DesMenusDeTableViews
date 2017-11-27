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
    case options
    case sélections
}

struct Globale {
    static var donnéesDesTableViews = [
        [
            // tableview 01
            // Les options à afficher dans le tableView
            ["12", "23", "56", "67", "99"],
            // Les choix de l'utilisateur
            Array<IndexPath>()
        ]
    ]
    //static var choixTableView01 =
    //static var choixSélectionnésTableView01 = Array<IndexPath>()
}

