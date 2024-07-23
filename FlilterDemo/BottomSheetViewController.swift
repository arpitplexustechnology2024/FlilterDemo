//
//  BottomSheetViewController.swift
//  FlilterDemo
//
//  Created by Arpit iOS Dev. on 15/07/24.
//

import UIKit

class BottomSheetViewController: UIViewController {
    
    @IBOutlet weak var bottomSheetLabel: UILabel!
    @IBOutlet weak var bottomSheetButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            view.layer.cornerRadius = 28
            view.layer.masksToBounds = true
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bottomSheetLabel.text = "This is the Bottom Sheet"
    }
}
