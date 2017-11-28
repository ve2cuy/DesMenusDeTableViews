//
//  CelluleIngrédient.swift
//  MenuDeTableViews
//
//  Created by Alain on 17-11-28.
//  Copyright © 2017 Alain. All rights reserved.
//

import UIKit

class CelluleIngredient: UITableViewCell {

    @IBOutlet weak var categorie: UILabel!
    
    @IBOutlet weak var selections: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
