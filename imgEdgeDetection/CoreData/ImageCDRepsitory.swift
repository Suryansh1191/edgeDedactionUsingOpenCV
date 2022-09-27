//
//  ImageCDRepsitory.swift
//  imgEdgeDetection
//
//  Created by suryansh Bisen on 27/09/22.
//

import Foundation
import CoreData

class ImageCDRepository {
    
    static let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        //should not access AppDelegate any where, better solution can be creating an persistentStorage Class and having all the persistentContainer code and access that in live project.
    
    
    static func saveData(normalImage: Data, edgeImage: Data){
        
        let imageCD = ImageCoreData(context: context)
        
        imageCD.normalImage = normalImage
        imageCD.edgeImage = edgeImage
        imageCD.date = Date()
        
        do {
            try context.save()
        } catch let error as NSError {
            print("Error While Deleting Note: \(error.userInfo)")
        }
        
    }
    
    static func getAllData(complition: @escaping ([ImageCoreData]) -> Void){
        
        var fetchingImage = [ImageCoreData]()
        
        let fetchRequest = NSFetchRequest<ImageCoreData>(entityName: "ImageCoreData")

        do {
            fetchingImage = try context.fetch(fetchRequest)
            var reversedOrder = [ImageCoreData]()
            for i in (fetchingImage).reversed(){
                reversedOrder.append(i)
            }
            complition(reversedOrder)
        } catch {
            print("Error while fetching the image")
            //TODO: ERROR HANDELING
            complition(fetchingImage)
        }
    }
    
}
