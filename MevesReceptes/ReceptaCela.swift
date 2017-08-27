//
//  ReceptaCela.swift
//  MevesReceptes
//
//  Created by Xavier Castillo on 3/7/17.
//  Copyright © 2017 Xavier Castillo. All rights reserved.
//

import UIKit

class ReceptaCela: UITableViewCell {
    
    
    @IBOutlet var imatgeRecepta: UIImageView!
    
    @IBOutlet var etiqutetaNom: UILabel!
    @IBOutlet var etiquetaTemps: UILabel!
    @IBOutlet var etiquetaCalories: UILabel!
    @IBOutlet var etiquetaIngredients: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
