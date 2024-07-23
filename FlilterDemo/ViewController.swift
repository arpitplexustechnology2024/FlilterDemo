//
//  ViewController.swift
//  FlilterDemo
//
//  Created by Arpit iOS Dev. on 13/07/24.
//

import UIKit
import CoreImage

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var originalImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        originalImage = UIImage(named: "BoyImage")
        imageView.image = originalImage
    }
    
    @IBAction func applyFilter(_ sender: UIButton) {
        guard let originalImage = originalImage else { return }
        
        let ciImage = CIImage(image: originalImage)
        let filter = CIFilter(name: "CISepiaTone")
        filter?.setValue(ciImage, forKey: kCIInputImageKey)
        filter?.setValue(1.0, forKey: kCIInputIntensityKey)
        
        let context = CIContext()
        if let outputImage = filter?.outputImage,
           let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
            let filteredImage = UIImage(cgImage: cgImage)
            imageView.image = filteredImage
        }
    }
}
