//
//  MainViewController.swift
//  FlilterDemo
//
//  Created by Arpit iOS Dev. on 15/07/24.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var openBottomSheetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openBottomSheet(_ sender: UIButton) {
        if let bottomSheetVC = storyboard?.instantiateViewController(withIdentifier: "BottomSheetViewController") as? BottomSheetViewController {
            if let sheet = bottomSheetVC.sheetPresentationController {
                sheet.detents = [.medium()]
                sheet.prefersGrabberVisible = true
            }
            present(bottomSheetVC, animated: true, completion: nil)
        }
    }
}
