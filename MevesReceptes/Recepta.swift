//
//  Recepta.swift
//  MevesReceptes
//
//  Created by Xavier Castillo on 3/7/17.
//  Copyright © 2017 Xavier Castillo. All rights reserved.
//

import Foundation
import UIKit

class Recepta: NSObject {
    var nom : String!
    var image : UIImage!
    var temps : Int!
    var calories : Int!
    var ingredients : [String]!
    var steps : [String]!
    
    //var esFavorita : Bool = false
    var rating : String = "rating"
    
    init(nom : String,image : UIImage, temps : Int, calories : Int, ingredients : [String], steps : [String]) {
        self.nom = nom
        self.image = image
        self.temps = temps
        self.calories = calories
        self.ingredients = ingredients
        self.steps = steps
    }
}
