//
//  ViewController.swift
//  imgEdgeDetection
//
//  Created by suryansh Bisen on 26/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    var img: UIImage?
    @IBOutlet weak var mainIMGView: UIImageView!
    @IBOutlet weak var urlInputText: UITextField!
    var imagePicker: ImagePicker!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        print("\(OpenCVWrapper.openCVVersionString())") //openCV Working
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.topItem?.title = "Image Edge Detection"

    }
    
    @IBAction func imgLinkInput(_ sender: Any) {
        
    }
    
    @IBAction func getImgFromURL(_ sender: Any) {
        
        
        view.endEditing(true)
        let imgUrl = urlInputText.text
        self.mainIMGView.setImageWithURL(imgUrl)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destiantion = segue.destination as? DetectViewController
        
        if mainIMGView.image == nil {
            return
        }
        
        destiantion?.normalIMG = mainIMGView.image
        destiantion?.edgeIMG = OpenCVWrapper.dedactEdge(mainIMGView.image!)
    
    }
    
    @IBAction func detectEdgeButton(_ sender: Any) {
        
    }
    
    @IBAction func chooesImgButton(_ sender: Any)  {
        self.imagePicker.present(from: sender as! UIView)
    }
    
}

extension ViewController: ImagePickerDelegate {
    func didSelect(image: UIImage?) {
        self.mainIMGView.image = image
    }
    
    


    
}

