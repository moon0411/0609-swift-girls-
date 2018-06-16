//
//  ViewController.swift
//  0609swift girls
//
//  Created by 李沐軒 on 2018/6/9.
//  Copyright © 2018年 李沐軒. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var showLabel: UILabel!
    
    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var accountTextField: UITextField!
   
    @IBOutlet weak var pwTextfield: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: Any) {
        if accountTextField.text == "Emma" && pwTextfield.text == "0000" {
            resultLabel.text = "Scussess!!!"
            performSegue(withIdentifier: "p2Segue", sender: self)
        } else {
            resultLabel.text = "Error!!!"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "p2Segue" {
//        let vc = segue.destination as! SecondViewController
        }
    
        
    }

}

