//
//  ViewController.swift
//  mockExam
//
//  Created by AALIYAH on 24/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    //varible for our UIView
    @IBOutlet weak var theView: UIView!
    
    //variables for our sliders
    @IBOutlet weak var widthSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var xSlider: UISlider!
    @IBOutlet weak var ySlider: UISlider!
    
 
    
    
    //place our custom uiViewUpdate Function into viewdidload so we can see it
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiViewUpdate()
    
    }
    
    
    
    //create an action to get the data from the slider. add the function we create uiViewUpdate
    
    @IBAction func sliderAction(_ sender: UISlider) {
        uiViewUpdate()
    }
    
    //colorSwitches action
    @IBAction func colorSwitchAction(_ sender: UISwitch) {
       
    }
    
    //colorSlider action
    @IBAction func colorSliderAction(_ sender: UISlider) {
    
    }
    
    
    
    
    
    

    /* we want to update the width and height of the uiView with the values from the sliders. pass the values using the .bounds property
     
     this is done by creating a function i have called uiViewUpdate
     
    */
    func uiViewUpdate() {
        //put height and width of screen in constants as we want to multiply this value the data from the sliders
        
        let screenWidth = view.frame.width
        let screenHeight = view.frame.height
        
        //stores value for widthSlider
        let widthValue = CGFloat(widthSlider.value)
        //stores value for heightSlider
        let heightValue = CGFloat(heightSlider.value)
        // stores value for xSlider
        let xValue = CGFloat(xSlider.value)
        //stores value for ySlider
        let yValue = CGFloat(ySlider.value)
        
        //------------------------//
        
        //update the UIview height and width by passing in the values from the sliders to the UIView using the bounds property we multiply these values by the screen width and hight so it covers the screen
        
        theView.bounds = CGRect(x: 0, y: 0, width: screenWidth * widthValue, height: screenHeight * heightValue)
       
      //update x and y location by passing in the values from the sliders to the UIView using the centre property we multiply these values by the screen width and hight so it covers the screen
        
        theView.center = CGPoint(x: screenWidth * xValue, y: screenHeight * yValue)
        
    }

    
}
