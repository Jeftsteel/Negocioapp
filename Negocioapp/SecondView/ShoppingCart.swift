//
//  ShoppingCart.swift
//  Carrito de compras
//
//  Created by Michel Eyssautier on 22/05/22.
//

import Foundation
import UIKit

class ShoppingCart{
    
    var productList: [(Product, Int, Int)] //Lista: (producto,cantidad,subtotal)
    var total: Int
    
    init() {
        self.productList = []
        self.total = 0
    }
    
    func countCartItems(cart: ShoppingCart) -> Int{
        var total = 0
        for item in productList{
            total += item.1
        }
        return total
    }
    
    func calculateTotal(cart: ShoppingCart) -> Int{
        var total = 0
        for product in productList{
            total += product.1 * product.0.price //Total = Cantidad * Precio del producto
        }
        return total
    }
    
    func printCarContents(cart: ShoppingCart){
        for product in productList{
            print("\(product.0.title)")
        }
        
    }
}
