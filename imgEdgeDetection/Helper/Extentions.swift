//
//  Extentions.swift
//  imgEdgeDetection
//
//  Created by suryansh Bisen on 27/09/22.
//

import Foundation

extension UIImageView {
    func setImageWithURL(_ url: String?){
        
        if url == nil || url == ""{
            return
        }
        
        let url = URL(string: url!)
        let sesion = URLSession.shared
        
        //downloading image here to set in UI IMAGE
        let dataTask = sesion.dataTask(with: url!) { data, response, error in
            
            if error == nil && data != nil {
                
                let image = UIImage(data: data!)
                
                DispatchQueue.main.async {
                    self.image = image
                }
                
            }
            
        }
        dataTask.resume()
    }
}


extension Date {
    func dateFormate() -> String {
        
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MMM dd, yyyy"
                
        let date: Date? = dateFormatterGet.date(from: self.ISO8601Format() )
        return dateFormatterPrint.string(from: date!);

    }
}


// Put this piece of code anywhere you like
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

