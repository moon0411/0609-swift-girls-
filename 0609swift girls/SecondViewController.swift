//
//  SecondViewController.swift
//  0609swift girls
//
//  Created by 李沐軒 on 2018/6/9.
//  Copyright © 2018年 李沐軒. All rights reserved.
//

import UIKit


var imaArr:[UIImage] = []



class SecondViewController: UIViewController {
    
    @IBOutlet weak var sandImageView: UIImageView!
    
    @IBOutlet weak var shovelImageView: UIImageView!
    
    func shake() {
        let shake = CABasicAnimation(keyPath: "transform.rotation.z")
        shake.fromValue = -0.2
        shake.toValue = 0.2
        shake.duration = 0.25
        shake.autoreverses = true
        shake.repeatCount = 99999999
        
        shovelImageView.layer.add(shake, forKey: "shakeAnimation")
    }
    
    @IBOutlet weak var logoshowImageView: UIImageView!
  

    override func viewDidLoad() {
        super.viewDidLoad()
       
        for i in 0...3 {
            imaArr.append(UIImage(named: "\(i)")!)
        }
        
        logoshowImageView.animationImages = imaArr
        logoshowImageView.animationDuration = 5
        logoshowImageView.startAnimating()
        
        
        // Do any additional setup after loading the view.
    }

   
    override func viewDidAppear(_ animated: Bool) {
        shake()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
