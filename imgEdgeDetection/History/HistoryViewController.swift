//
//  HistoryViewController.swift
//  imgEdgeDetection
//
//  Created by suryansh Bisen on 27/09/22.
//

import UIKit

class HistoryViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    var imageData = [ImageCoreData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        confTableView()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getHisotryData()
        self.navigationController?.navigationBar.topItem?.title = "History"

    }
    
    func confTableView() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func getHisotryData() {
        ImageCDRepository.getAllData { data in
            print(data)
            self.imageData = data
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }

}

extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageData.count;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        let historyCell = tableView.dequeueReusableCell(withIdentifier: "HistoryTableViewCell") as! HistoryTableViewCell
        
        historyCell.setData(data: imageData[indexPath.row])
        
        return historyCell
    }
    
    
    
    
}
