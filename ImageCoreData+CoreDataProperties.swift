//
//  ImageCoreData+CoreDataProperties.swift
//  imgEdgeDetection
//
//  Created by suryansh Bisen on 27/09/22.
//
//

import Foundation
import CoreData


extension ImageCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ImageCoreData> {
        return NSFetchRequest<ImageCoreData>(entityName: "ImageCoreData")
    }

    @NSManaged public var normalImage: Data?
    @NSManaged public var edgeImage: Data?
    @NSManaged public var date: Date?

}

extension ImageCoreData : Identifiable {

}
