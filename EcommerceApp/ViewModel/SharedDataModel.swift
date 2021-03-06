//
//  SharedDataModel.swift
//  EcommerceApp
//
//  Created by Bhumika Patel on 31/05/22.
//

import SwiftUI

class SharedDataModel: ObservableObject{
    // Detail Product Data..
    @Published var detailProduct: Product?
    @Published var showDetailProduct: Bool = false
    
    //matched geomatry effect in search bar
    @Published var fromSearchPage: Bool = false
    
    // liked product
    @Published var likedProducts: [Product] = []
    
    //basket Product
    @Published var cartProducts: [Product] = []
    
    //calculateing
    func getTotalPrice()->String{
        
        var total: Int = 0
        
        cartProducts.forEach{ product in
            let price = product.price.replacingOccurrences(of: "$", with: "") as NSString
            
            let quantity = product.quantity
            let priceTotal = quantity * price.integerValue
            
            total += priceTotal
            
        }
        return "$\(total)"
    }
}
   
