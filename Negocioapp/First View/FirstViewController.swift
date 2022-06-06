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
        setUpUI()
        
    }
    
    // MARK: Outlets
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ageDescriptionLabel: UILabel!
    @IBOutlet weak var paymentLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var ageSwitch: UISwitch!
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardSwitch: UISwitch!
    @IBOutlet weak var cashLabel: UILabel!
    @IBOutlet weak var cashSwitch: UISwitch!
    @IBOutlet weak var CardNumberLabel: UILabel!    
    @IBOutlet weak var CardNumberTextField: UITextField!
    
    //MARK: Actions
    @IBAction func registrarseButtonPressed(_ sender: Any) {
        let secondStoryboard = UIStoryboard(name: "SecondStoryboard", bundle: .main)
        if let secondViewController = secondStoryboard.instantiateViewController(withIdentifier: "SecondVC")as? SecondViewController{
            secondViewController.modalPresentationStyle = .fullScreen
            secondViewController.stringReceived = "String desde FirstVC"
            let navigationController = UINavigationController(rootViewController: secondViewController)
            self.present(navigationController,animated: true)
            //self.navigationController?.pushViewController(secondViewController, animated: true)
        }
    }
    
    
    //MARK: Methods
    
    func setUpUI(){
        titleLabel.text = "¡Registrate!"
        ageDescriptionLabel.text = "Soy mayor de edad"
        paymentLabel.text = "Metodo de pago"
        cashLabel.text = "Efectivo"
        cardLabel.text = "Tarjeta"
        ageSwitch.isOn = false
        cashSwitch.isOn = false
        cardSwitch.isOn = false
        CardNumberLabel.text = "Ingrese su numero de tarjeta"
        
    
    }
    
    
    
    
}
