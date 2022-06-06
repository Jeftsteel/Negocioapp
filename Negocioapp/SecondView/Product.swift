//
//  Product.swift
//  Carrito de compras
//
//  Created by Michel Eyssautier on 22/05/22.
//

import UIKit
import Foundation

class Product{
    
    var image: UIImage
    var title: String
    var price: Int
    
    init(image: UIImage, title: String, price: Int) {
        self.image = image
        self.title = title
        self.price = price
    }
}
