//
//  DreamTableViewCell.swift
//  MyMonee
//
//  Created by MacTavish on 09/05/21.
//

import UIKit

class DreamTableViewCell: UITableViewCell {


    @IBOutlet weak var dreamName: UILabel!
    @IBOutlet weak var dreamProgressBar: UIProgressView!
    @IBOutlet weak var dreamExpense: UILabel!
    
    @IBAction func btnDelete(_ sender: Any) {
    }
    
//    @IBAction func btnDelete(_ sender: Any) {
//        let alertController = UIAlertController(title: "iOScreator", message:
//            "Delete?", preferredStyle: .alert)
//        alertController.addAction(UIAlertAction(title: "Cancel", style: .default))
//
//        self.present(alertController, animated: true, completion: nil)
//    }
    
//    static let identifier = "DreamTableViewCell"
//    
//    static func nib() -> UINib {
//        return UINib(nibName: "DreamTableViewCell", bundle: nil)
//    }
//    
//    @IBOutlet var button: UIButton!
//    @IBAction func didTapButton() {
//        
//    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
