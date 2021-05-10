//
//  ViewController.swift
//  MyMonee
//
//  Created by MacTavish on 05/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "iOScreator", message:
            "Delete?", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Cancel", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }
        
    

}
