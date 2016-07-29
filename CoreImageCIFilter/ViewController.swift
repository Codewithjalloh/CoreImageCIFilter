//
//  ViewController.swift
//  CoreImageCIFilter
//
//  Created by wealthyjalloh on 27/07/2016.
//  Copyright © 2016 CWJ. All rights reserved.
//

import UIKit
import CoreImage

class ViewController: UIViewController {
    var sliderValue: Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // outlet and action
    @IBOutlet weak var myImg: UIImageView!
    
    @IBAction func sepia(sender: UIButton) {
        applyFilter(1)
        
    }
    
    @IBAction func vignette(sender: UIButton) {
        applyFilter(2)
        
    }
    
    @IBAction func invert(sender: UIButton) {
        applyFilter(3)
        
    }
    
    @IBAction func photo(sender: UIButton) {
        applyFilter(4)
        
    }
    
    @IBAction func perspective(sender: UIButton) {
        applyFilter(5)
        
    }
    
    @IBAction func gussian(sender: UIButton) {
        applyFilter(6)
        
    }
    
    @IBAction func slider(sender: UISlider) {
        sliderValue = sender.value
        
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func applyFilter(numberFilter: Int) {
        let filePath: NSString = NSBundle.mainBundle().pathForResource("image", ofType: "jpg")!
        let fileUrl: NSURL = NSURL(fileURLWithPath: filePath as String)
        let inputImage: CIImage = CIImage(contentsOfURL: fileUrl)!
        
        
        switch numberFilter {
        case 1:
            let filter = CIFilter(name: "CISepiaTone")!
            filter.setValue(inputImage, forKey: kCIInputImageKey)
            filter.setValue(sliderValue, forKey: "InputIntensity")
            
            let outputImage : CIImage = filter.valueForKey(kCIInputImageKey) as!  CIImage
            let img: UIImage = UIImage(CIImage: outputImage)
            myImg.image = img
            
            
            
        case 2:
            let filter : CIFilter = CIFilter(name: "CIVignette")!
            filter.setValue(inputImage, forKey: kCIInputImageKey)
            filter.setValue(sliderValue, forKey: "InputRadius")
            filter.setValue(sliderValue, forKey: "InputIntensity")
            let outputImage : CIImage = filter.valueForKey(kCIInputImageKey) as!  CIImage
            let img: UIImage = UIImage(CIImage: outputImage)
            myImg.image = img
            
            
        default:
            print("Test....")
        }
        
    }

}

