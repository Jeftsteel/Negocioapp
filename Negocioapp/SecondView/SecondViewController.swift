//
//  SecondViewController.swift
//  Negocioapp
//
//  Created by Cristian guillermo Romero garcia on 02/06/22.
//

import UIKit

class SecondViewController: UIViewController {

    let menu = ["Bebidas","botellas","botanas","comida"]
    
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
 
    @IBOutlet weak var menuView: UITableView!
    
   
    
    private func setUpUI(){
        nameLabel.text = user.name
        titleLabel.text = "Bienvenido:"
        menuView.delegate = self
        menuView.dataSource = self
        
        

    }
    
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = menuView.dequeueReusableCell(withIdentifier: "customCell")as! CustomCell
        let menus = menu[indexPath.row]
        cell.menuimg.image = UIImage(named: menus)
        cell.menuLabel.text = menus
      
        
        return cell
    }
    
    
}
