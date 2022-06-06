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
    @IBOutlet weak var errorLabel: UILabel!
    
    //MARK: Actions
    @IBAction func registrarseButtonPressed(_ sender: Any) {
        guard let name = nameTextField.text,
              let email = emailTextField.text,
              let phone = phoneTextField.text else{return}
        if name.isEmpty || email.isEmpty ||  phone.isEmpty{
            errorLabel.isHidden = false
        }else{
            errorLabel.isHidden = true
            let newUser = User(name: name,email: email, phone: phone)
            presentSecondStoryBoard(withUser: newUser)
            
        }
    }
    @IBAction func ageSwitchChange(_ sender: Any) {
        if ageSwitch.isOn == false{
            confirmButton.isEnabled = false
            
        }else{
            confirmButton.isEnabled = true
            
        }
   }
    
    
    
    
    @IBAction func cardSwitchChange(_ sender: Any) {
        if cardSwitch.isOn == true{
            CardNumberLabel.isHidden = false
            CardNumberTextField.isHidden = false
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
        CardNumberLabel.isHidden = true
        
        CardNumberTextField.placeholder = "Numero de tarjeta"
        CardNumberTextField.isHidden = true
        
        nameTextField.placeholder = "Nombre"
        emailTextField.placeholder = "Email"
        phoneTextField.placeholder = "Telefono"
        errorLabel.text = "Error, ingrese todos los datos"
        errorLabel.isHidden = true
        
        confirmButton.isEnabled = false
    
    }
    
    func presentSecondStoryBoard(withUser user: User){
        let secondStoryboard = UIStoryboard(name: "SecondStoryboard", bundle: .main)
        if let secondViewController = secondStoryboard.instantiateViewController(withIdentifier: "SecondVC")as? SecondViewController{
            secondViewController.modalPresentationStyle = .fullScreen
            secondViewController.stringReceived = "String desde FirstVC"
            let navigationController = UINavigationController(rootViewController: secondViewController)
            secondViewController.user = user
            self.present(navigationController,animated: true)
            //self.navigationController?.pushViewController(secondViewController, animated: true)
        }
        
    }
    
    
}
