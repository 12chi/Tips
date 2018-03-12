//
//  ViewController.swift
//  Tips
//
//  Created by Chi Nguyen on 3/8/18.
//  Copyright © 2018 Chi Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var pcLabel1: UILabel!
    @IBOutlet weak var pcLabel2: UILabel!
    @IBOutlet weak var pcLabel3: UILabel!
    
    @IBOutlet weak var tipLabel1: UILabel!
    @IBOutlet weak var tipLabel2: UILabel!
    @IBOutlet weak var tipLabel3: UILabel!
    
    @IBOutlet weak var pamtLabel1: UILabel!
    @IBOutlet weak var pamtLabel2: UILabel!
    @IBOutlet weak var pamtLabel3: UILabel!
    
    @IBOutlet weak var gSizeLabel: UILabel!
    @IBOutlet weak var gSizeSlider: UISlider!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBOutlet weak var tipsSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tipValueChanged(_ sender: UISlider) {
        let selectedValue = Int(sender.value)
        let totalAmt = Float(displayLabel.text!)
        
        pcLabel1.text = String(stringInterpolationSegment: selectedValue) + "%"
        
        pcLabel2.text = String(stringInterpolationSegment: selectedValue + 5) + "%"
        
        pcLabel3.text = String(stringInterpolationSegment: selectedValue + 10) + "%"
        
        calTips()
        calPayAmt()

    }
    
    @IBAction func grpSzSlider(_ sender: UISlider) {
        gSizeLabel.text = "Group Size: " + String(format: "%.0f", sender.value)
        calPayAmt()
        calTips()
    }
    
    @IBAction func button_0(_ sender: UIButton) {
        concatDisplay(val: String(sender.tag))
        calTips()
        calPayAmt()
    }
    
    @IBAction func button_1(_ sender: UIButton) {
        concatDisplay(val: String(sender.tag))
        calTips()
        calPayAmt()
    }
    
    @IBAction func button_2(_ sender: UIButton) {
        concatDisplay(val: String(sender.tag))
        calTips()
        calPayAmt()
    }
    
    @IBAction func button_3(_ sender: UIButton) {
        concatDisplay(val: String(sender.tag))
        calTips()
        calPayAmt()
    }
    
    @IBAction func button_4(_ sender: UIButton) {
        concatDisplay(val: String(sender.tag))
        calTips()
        calPayAmt()
    }
    
    @IBAction func button_5(_ sender: UIButton) {
        concatDisplay(val: String(sender.tag))
        calTips()
        calPayAmt()
    }
    
    @IBAction func button_6(_ sender: UIButton) {
        concatDisplay(val: String(sender.tag))
        calTips()
        calPayAmt()
    }
    
    @IBAction func button_7(_ sender: UIButton) {
        concatDisplay(val: String(sender.tag))
        calTips()
        calPayAmt()
    }
    
    @IBAction func button_8(_ sender: UIButton) {
        concatDisplay(val: String(sender.tag))
        calTips()
        calPayAmt()
    }
 
    @IBAction func button_9(_ sender: UIButton) {
        concatDisplay(val: String(sender.tag))
        calTips()
        calPayAmt()
    }
    
    @IBAction func button_per(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "."
    }
    
    @IBAction func button_c(_ sender: UIButton) {
        displayLabel.text = "0"
        calTips()
        calPayAmt()
    }
    
    func concatDisplay (val: String) {
        if displayLabel.text == "0" {
            displayLabel.text = val
        } else {
            displayLabel.text = displayLabel.text! + val
        }
    }
    
    func calTips() {
        let selectedValue = Int(tipSlider.value)
        let totalAmt = Float(displayLabel.text!)
        var slider = gSizeSlider.value
        slider.round(.down)
        
        tipLabel1.text = "$" + String(format: "%.2f", totalAmt!*(Float(selectedValue)/100)/slider)
        tipLabel2.text = "$" + String(format: "%.2f", totalAmt!*(Float(selectedValue + 5)/100)/slider)
        tipLabel3.text = "$" + String(format: "%.2f", totalAmt!*(Float(selectedValue + 10)/100)/slider)
    }
    
    func calPayAmt() {
        let selectedValue = Int(tipSlider.value)
        let totalAmt = Float(displayLabel.text!)
        var slider = gSizeSlider.value
        slider.round(.down)
        
        pamtLabel1.text = "$" + String(format: "%.2f", totalAmt!*(Float(selectedValue)/100+1)/slider)
        pamtLabel2.text = "$" + String(format: "%.2f", totalAmt!*(Float(selectedValue + 5)/100+1)/slider)
        pamtLabel3.text = "$" + String(format: "%.2f", totalAmt!*(Float(selectedValue + 10)/100+1)/slider)
    }
    
}

