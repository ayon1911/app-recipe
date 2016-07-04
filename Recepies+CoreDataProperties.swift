//
//  Recepies+CoreDataProperties.swift
//  app-recepiec-withCoreData
//
//  Created by Khaled Rahman Ayon on 03/07/16.
//  Copyright © 2016 iosApp. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Recepies {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var steps: String?
    @NSManaged var ingredients: String?

}
