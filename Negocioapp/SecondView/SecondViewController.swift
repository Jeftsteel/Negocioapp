//
//  SecondViewController.swift
//  Negocioapp
//
//  Created by Cristian guillermo Romero garcia on 02/06/22.
//

import UIKit

class SecondViewController: UIViewController {

    var stringReceived: String = ""
    var user = User(name: "", email:"", phone:"")
    override func viewDidLoad() {
        super.viewDidLoad()
        print(stringReceived)
        print("User: \(user)")
        setUpUI()
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    private func setUpUI(){
        nameLabel.text = user.name
        titleLabel.text = "Bienvenido:"
    }
    
    func presentBotanasStoryBoard(){
        let botanasStoryboard = UIStoryboard(name: "BotanasStoryboard", bundle: .main)
        if let botanasViewController = botanasStoryboard.instantiateViewController(withIdentifier: "botanasVC")as? SecondViewController{
            botanasViewController.modalPresentationStyle = .fullScreen
            botanasViewController.stringReceived = "String desde secondVC"
            let navigationController = UINavigationController(rootViewController: botanasViewController)
            botanasViewController.user = user
            self.present(navigationController,animated: true)
            //self.navigationController?.pushViewController(secondViewController, animated: true)
        }

}
}
