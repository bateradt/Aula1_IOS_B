//
//  ViewController.swift
//  AulaFib
//
//  Created by fibbauru-14 on 23/02/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var mainTextLabel: UILabel!
    @IBOutlet weak var btnTeste: UIButton!
    
    @IBAction func onClick(_ sender: Any) {
        
        
        
        // create the alert
        let alert = UIAlertController(title: "Aula de IOS", message: "Marcelo Fernando Scarpim", preferredStyle: .alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.mainTextLabel.text = String(arc4random())
        } ))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
    
}

