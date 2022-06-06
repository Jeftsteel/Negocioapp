//  ItemSaleList.swift
//
//  Created by Michel Eyssautier on 22/05/22.
//

//  View controller del table view
/*import UIKit

class ItemSaleList: UIViewController{
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var shoppingCartIcon: UIImageView!
    
    @IBOutlet weak var itemsInCartLabel: UILabel!
    @IBOutlet weak var purchaseTotalLabel: UILabel!
    
    var products: [Product] = []
    var cart = ShoppingCart()
    
    var itemsInCart = Int()
    var cartTotal = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        products = createProductArray()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        itemsInCart = cart.countCartItems(cart: cart)
        cartTotal = cart.calculateTotal(cart: cart)
        itemsInCartLabel.text = "Items: " + String(itemsInCart)
        purchaseTotalLabel.text = "Total: $" + String(cartTotal)

    }
    
    func createProductArray() -> [Product]{
        var temp: [Product] = []
        if tipo==1
        {
            let r1 = Product(image: UIImage(named: "r1")!, title: "Delaware Punch", price: 25)
            let r2 = Product(image: UIImage(named: "r2")!, title: "Ciel gasificada", price: 25)
            let r3 = Product(image: UIImage(named: "r3")!, title: "Coca-Cola Light", price: 25)
            let r4 = Product(image: UIImage(named: "r4")!, title: "Sprite", price: 25)
            let r5 = Product(image: UIImage(named: "r5")!, title: "Coca-Cola", price: 25)
            let r6 = Product(image: UIImage(named: "r6")!, title: "Manzanita", price: 25)
            let r7 = Product(image: UIImage(named: "r7")!, title: "Fuze Tea Durazno", price: 30)
            let r8 = Product(image: UIImage(named: "r8")!, title: "Del Valle de Arándano", price: 50)
            let r9 = Product(image: UIImage(named: "r9")!, title: "Del Valle de Manzana", price: 50)
            let r10 = Product(image: UIImage(named: "r10")!, title: "Vitamin Water Fruta de dragón", price: 40)
            let r11 = Product(image: UIImage(named: "r11")!, title: "Vitamin Water Cítrico Tropical", price: 40)
            let r12 = Product(image: UIImage(named: "r12")!, title: "Vitamin Water Ponche de frutas", price: 40)
            let r13 = Product(image: UIImage(named: "r13")!, title: "Power Ade Frutas", price: 40)
            let r14 = Product(image: UIImage(named: "r14")!, title: "Power Ade Lima/Limón", price: 40)
            let r15 = Product(image: UIImage(named: "r15")!, title: "Electrolit Coco", price: 35)
            let r16 = Product(image: UIImage(named: "r16")!, title: "Electrolit Piña", price: 35)
            let r17 = Product(image: UIImage(named: "r17")!, title: "Electrolit Mora Azul", price: 35)
            let r18 = Product(image: UIImage(named: "r18")!, title: "Electrolit Uva", price: 35)
            let r19 = Product(image: UIImage(named: "r19")!, title: "Electrolit Fresa-Kiwi", price: 35)
            
            temp.append(j1)
            temp.append(j2)
            temp.append(j3)
            temp.append(j4)
            temp.append(j5)
            temp.append(j6)
            temp.append(j7)
            temp.append(j8)
            temp.append(j9)
            temp.append(j10)
            temp.append(j11)
            temp.append(j12)
            temp.append(j13)
            temp.append(j14)
            temp.append(j15)
            temp.append(j16)
            temp.append(j17)
        }
       else
       {
           let b1 = Product(image: UIImage(named: "b1")!, title: "Doritos", price: 15)
           let b2 = Product(image: UIImage(named: "b2")!, title: "Papas Crujientes", price: 20)
           let b3 = Product(image: UIImage(named: "b3")!, title: "Sabritas", price: 15)
           let b4 = Product(image: UIImage(named: "b4")!, title: "Ruffles", price: 15)
           let b5 = Product(image: UIImage(named: "b5")!, title: "Palomitas Act-II Mantequilla", price: 25)
           let b6 = Product(image: UIImage(named: "b6")!, title: "Palomitas Act-II Naturales", price: 25)
           let b7 = Product(image: UIImage(named: "b7")!, title: "Arándanos", price: 35)
           let b8 = Product(image: UIImage(named: "b8")!, title: "Dátil", price: 35)
           let b9 = Product(image: UIImage(named: "b9")!, title: "Frutos Secos Mix", price: 35)
               
           temp.append(b1)
           temp.append(b2)
           temp.append(b3)
           temp.append(b4)
           temp.append(b5)
           temp.append(b6)
           temp.append(b7)
           temp.append(b8)
           temp.append(b9)
       }

        
        return temp
    }

    func setupUI(){
        navigationItem.title = "Catálogo"
        
        tableView.backgroundColor = .clear
        
        itemsInCartLabel.text = "Items: " + String(itemsInCart)
        purchaseTotalLabel.text = "Total: $" + String(cartTotal)
        shoppingCartIcon.image = UIImage(named: "white cart")
        bottomView.backgroundColor = .clear
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "toProductDetail":
            let indexPath = tableView.indexPathForSelectedRow
            let productView = segue.destination as? ProductDetailViewController
            productView?.product = products[indexPath!.row]
            productView?.productListCartControl = self //Referencia de éste view p/inyección
        case "toCartInfo":
            let cartView = segue.destination as? CartModalViewController
            cartView?.productListCartControl = self //Inyecciones 
        default:
            print("¡Oh, Neptuno!")
        }
    }
    
    //Acciones
    
}


//Implementaciones del tableview en extensión
extension ItemSaleList: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = products[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell") as! ProductCell
        
        //propiedades de la celda se modifican en su clase
        cell.placeProduct(product: product)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}*/
