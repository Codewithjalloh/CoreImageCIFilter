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
    var slierValue: Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // outlet and action 
    @IBOutlet weak var myImg: UIImageView!
    
    @IBAction func sepia(sender: UIButton) {
        
    }
    
    @IBAction func vignette(sender: UIButton) {
        
    }
    
    @IBAction func invert(sender: UIButton) {
        
    }
    
    @IBAction func photo(sender: UIButton) {
        
    }
    
    @IBAction func perspective(sender: UIButton) {
        
    }
    
    @IBAction func gussian(sender: UIButton) {
        
    }
    
    @IBAction func slider(sender: UISlider) {
        slierValue = sender.value
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

