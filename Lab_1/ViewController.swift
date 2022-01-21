//
//  ViewController.swift
//  Lab_1
//
//  Created by John Tremendol on 19/01/22.
//

import UIKit

class numdis
{
    
    //output variable num
    var num=0
    
    //step modifier variable step
    var step=1
    
    //function to reset all values
    func resetz()
    {
        num=0
        step=1
        
    }
    
    //function to increment
    func add()
    {
        num=num+step
        print(num)
        
    }
    
    //function to decrement
    func sub()
    {
        num=num-step
        print(num)
    }
    
    //function to change step. ADDED FUNCTIONALITY of displaying current step value.
    func stepchnage()
    {
        if(step==1)
        {
            step=2
        }
        else
        {
            step=1
        }
        
    }
}
class ViewController: UIViewController
{

    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //resetting everytime just in case
        
        nd1.resetz()
        
        
    }
    
    var nd1 = numdis()
    
    
    //Numerical Label
    @IBOutlet weak var numeral: UILabel!
    
    //Reset Button
    @IBAction func Resetb(_ sender: Any) {
        nd1.resetz()
        numeral.text=String(nd1.num)
        stepbspeak.setTitle("Step = \(nd1.step)", for: .normal)
    }
    
    //Step Count button
    @IBAction func stepb(_ sender: Any)
    {
        nd1.stepchnage()
        stepbspeak.setTitle("Step = \(nd1.step)", for: .normal)
    }
    
    //for changing Step button title
    @IBOutlet weak var stepbspeak: UIButton!
    
    
    //Subtract Button
    @IBAction func Subb(_ sender: Any)
    {
        nd1.sub()
        numeral.text=String(nd1.num)
    }
    
    //Add Button
    @IBAction func Addb(_ sender: Any)
    {
        nd1.add()
        numeral.text=String(nd1.num)
    }
    
    
}

