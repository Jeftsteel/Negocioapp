//
//  FirstViewController.swift
//  Negocioapp
//
//  Created by Cristian guillermo Romero garcia on 02/06/22.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
    }
    

    @IBAction func registrarseButtonPressed(_ sender: Any) {
        let secondStoryboard = UIStoryboard(name: "SecondStoryboard", bundle: .main)
        if let secondViewController = secondStoryboard.instantiateViewController(withIdentifier: "SecondVC")as? SecondViewController{
            secondViewController.stringReceived = "String desde FirstVC"
            self.present(secondViewController,animated: true)
        }
    }
}
