//
//  RecipeCell.swift
//  app-recepiec-withCoreData
//
//  Created by Khaled Rahman Ayon on 03/07/16.
//  Copyright © 2016 iosApp. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureCell (recipe: Recepies) {
        
        recipeTitle.text = recipe.title
        recipeImg.image = recipe.getRecipeImage()
    }

   

}
