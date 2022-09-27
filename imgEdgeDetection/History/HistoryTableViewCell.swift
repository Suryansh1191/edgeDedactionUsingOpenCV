//
//  HistoryTableViewCell.swift
//  imgEdgeDetection
//
//  Created by suryansh Bisen on 27/09/22.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var normalImgView: UIImageView!
    
    @IBOutlet weak var edgeImgView: UIImageView!
    
    @IBOutlet weak var dateLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(data: ImageCoreData){
        
        guard data.normalImage != nil && data.edgeImage != nil else { return }
        
        normalImgView.image = UIImage(data: data.normalImage!)
        edgeImgView.image = UIImage(data: data.edgeImage!)
        dateLable.text = data.date?.dateFormate()
    }

}
