//
//  ViewController.swift
//  ColorMakerSlider
//
//  Created by Michael Henry on 7/8/16.
//  Copyright © 2016 Digital Javelina, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorChangeComponent()
        
    }
    
    @IBAction func colorChangeComponent() {
        if self.redSlider == nil {
            return
        }
        
        let red = CGFloat(self.redSlider.value)
        let green = CGFloat(self.greenSlider.value)
        let blue = CGFloat(self.blueSlider.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        self.redValueLabel.text = String(redSlider.value * 255)
        self.greenValueLabel.text = String(greenSlider.value * 255)
        self.blueValueLabel.text = String(blueSlider.value * 255)
    }

}

