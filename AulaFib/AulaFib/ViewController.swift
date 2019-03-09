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
        carregando.hidesWhenStopped = true;
        carregando.stopAnimating();
        imgPrincipal.stopAnimating();
        imgPrincipal.isHidden = true
        
        var vflConstrainst = NSLayoutConstraint.constraints(withVisualFormat: "|-[greenLabel(==120)]-[redLabel]-|",
                                       options: .alignAllFirstBaseline,
                                       metrics: nil,
                                       views: ["redLabel":redLabel, "greenLabel":greenLabel]);
        
        let topGreenLabel = NSLayoutConstraint(item: greenLabel,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: view,
                                               attribute: .top,
                                               multiplier: 1,
                                               constant: 173);
        
        let topRedLabel = NSLayoutConstraint(item: redLabel,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: greenLabel,
                                               attribute: .top,
                                               multiplier: 1,
                                               constant: 0);
        
        vflConstrainst.append(topGreenLabel);
        vflConstrainst.append(topRedLabel);
        redLabel.translatesAutoresizingMaskIntoConstraints = false
        greenLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints(vflConstrainst);
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var mainTextLabel: UILabel!
    @IBOutlet weak var btnTeste: UIButton!
    @IBOutlet weak var carregando: UIActivityIndicatorView!
    @IBOutlet weak var imgPrincipal: UIImageView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBAction func onClick(_ sender: Any) {
        carregando.startAnimating();
        imgPrincipal.isHidden = false;
        
        // create the alert
        let alert = UIAlertController(title: "Aula de IOS", message: "Marcelo Fernando Scarpim", preferredStyle: .alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.mainTextLabel.text = String(arc4random())
        } ))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        //carregando.stopAnimating();
      
        
    }
    
}

