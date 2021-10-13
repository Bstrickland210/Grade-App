//
//  ViewController.swift
//  Grade App
//
//  Created by Bridger Strickland on 10/7/21.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var wantedGrade: UITextField!
    
    @IBOutlet weak var currentGrade: UITextField!
    
    @IBOutlet weak var weightFinal: UITextField!
    
    @IBOutlet weak var myLabel: UITextField!
    
    var name = ""
    
    var myInt1 = 0.0
    
    var Name = ""
    
    var myInt2 = 0.0
    
    var nAme = ""
    
    var myInt3 = 0.0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: Any)
    {
        name = wantedGrade.text ?? "0.0"
        myInt1 = Double(name) ?? 0.0
        
        Name = currentGrade.text ?? "0.0"
        myInt2 = Double(Name) ?? 0.0
        
        nAme = weightFinal.text ?? "0.0"
        myInt3 = Double(nAme) ?? 0.0
        
       var F = (myInt1-myInt2*(1-myInt3/100))/(myInt3/100)
        myLabel.text = "\(F)"
    }
        
}

