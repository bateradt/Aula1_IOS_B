//
//  FirstViewController.swift
//  AulaFib
//
//  Created by fibbauru-14 on 09/03/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Primeiro"
        navigationItem.prompt = "Subtitulo"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(facaAlgo))

        navigationItem.rightBarButtonItems = [UIBarButtonItem(title: "Proximo" , style: .plain, target: self, action: #selector(proximaTela)),
        UIBarButtonItem(title: "Teste" , style: .plain , target: self, action: #selector(proximaTela))]
        
        // Do any additional setup after loading the view.
    }
    
    @objc
    func proximaTela() {
        let secondViewController = SecondViewController();
        secondViewController.modalTransitionStyle = .flipHorizontal
        present(secondViewController, animated: true, completion: nil)
    }
    
    @objc
    func facaAlgo() {
        print("click")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showModal(_ sender: Any) {
        let secondViewController = SecondViewController();
        secondViewController.modalTransitionStyle = .flipHorizontal
        present(secondViewController, animated: true, completion: nil)
    }
    
    @IBAction func showNextNavigaton(_ sender: Any) {
        navigationController?.pushViewController(SecondViewController(), animated: true)
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
