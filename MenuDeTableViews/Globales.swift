//
//  Globales.swift
//  MenuDeTableViews
//
//  Created by Alain on 17-11-27.
//  Copyright © 2017 Alain. All rights reserved.
//

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

