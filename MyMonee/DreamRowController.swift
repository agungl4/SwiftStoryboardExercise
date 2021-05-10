//
//  DreamRowController.swift
//  MyMonee
//
//  Created by MacTavish on 09/05/21.
//

import Foundation
import UIKit

class DreamRowController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let name = ["beli switch", "rakit PC", "kredit KPR"]
    let expense = ["IDR 900.000 / IDR 7.500.000", "IDR 2000.000 / IDR 16.000.000", "IDR 5000.000 / IDR 999.000.000"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let uiNib = UINib(nibName: String(describing: DreamTableViewCell.self), bundle: nil)
        tableView.register(uiNib, forCellReuseIdentifier: String(describing: DreamTableViewCell.self))
    
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: DreamTableViewCell.self), for: indexPath) as! DreamTableViewCell
        cell.dreamName?.text = name[indexPath.item]
        cell.dreamExpense?.text = expense[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Delete", message: "Are you sure?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func handleImageGesture(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else { return
            
        }
        gestureView.center = CGPoint ( x: gestureView.center.x + translation.x , y: gestureView.center.y + translation.y)
        gesture.setTranslation(.zero, in: view)
    }

}
