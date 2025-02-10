//
//  Constants.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct Constants {
    
    //Data
    static let players: [Player] = Bundle.main.decode("player.json")
    static let categories: [Category] = Bundle.main.decode("category.json")
    static let products: [Product] = Bundle.main.decode("product.json")
    static let brands: [Brand] = Bundle.main.decode("brand.json")
    
    //Color
    static let colorBackground: Color = Color("ColorBackground")
    static let colorGray: Color = Color(UIColor.systemGray4)
    
    //Layout
    static let columnSpacing: CGFloat = 10
    static let rowSpacing: CGFloat = 10
    static var gridLayout: [GridItem] {
        Array(repeating: GridItem(.flexible(), spacing: Constants.rowSpacing), count: 2)
    }
    
    //UX
    
    //API
    
    //Image
    
    //Font
    
    //String
    
    //Misc
    
}
