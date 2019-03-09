//
//  SecondViewController.swift
//  AulaFib
//
//  Created by fibbauru-14 on 09/03/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func voltarModal(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func backNavigation(_ sender: Any) {
        //navigationController?.popViewController(animated: true) //volta para a view anterior que está na pilha
        //navigationController?.popToRootViewController(animated: true) //volta para a tela inicia, eliminando as views da pilha de navegação
        
        let viewPrimeira = navigationController!.viewControllers[0]
        //volta para uma view especifica, através do navigationController.viewControllers
        navigationController?.popToViewController(viewPrimeira, animated: true)
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
