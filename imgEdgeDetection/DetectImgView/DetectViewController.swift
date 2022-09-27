//
//  DetectViewController.swift
//  imgEdgeDetection
//
//  Created by suryansh Bisen on 27/09/22.
//

import UIKit

class DetectViewController: UIViewController {

    @IBOutlet weak var normalImgView: UIImageView!
    
    @IBOutlet weak var edgeDedectedImgView: UIImageView!
    
    var normalIMG: UIImage?
    var edgeIMG: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        normalImgView.image = normalIMG
        edgeDedectedImgView.image = edgeIMG
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        saveDataInCD()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = "Edge Dedaction Compare"
        
    }
    
    @IBAction func shareImageButton(_ sender: Any) {
        
        // image to share
        let image = edgeIMG
                
        let imageToShare = [ image! ]
        let activityViewController = UIActivityViewController(activityItems: imageToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
                
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]
                
        self.present(activityViewController, animated: true, completion: nil)
        
    }
    
    
    func saveDataInCD() {
        
        guard normalIMG != nil && edgeIMG != nil else { return }
        
        if let normalImageData = self.normalIMG!.pngData(){
            if let edgeImageData = self.edgeIMG!.pngData() {
                ImageCDRepository.saveData(normalImage: normalImageData, edgeImage: edgeImageData)
            }
        }
    }
    
    @IBAction func closeButton(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }

}
