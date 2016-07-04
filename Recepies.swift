//
//  Recepies.swift
//  app-recepiec-withCoreData
//
//  Created by Khaled Rahman Ayon on 03/07/16.
//  Copyright © 2016 iosApp. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Recepies: NSManagedObject {

    func setRecipeImage(img: UIImage) {
        
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getRecipeImage() -> UIImage {
        
        let img = UIImage(data: self.image!)!
        return img
    }

}
