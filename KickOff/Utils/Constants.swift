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
    static let sampleProduct: Product = products[0]
    
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
    static let feedback = UIImpactFeedbackGenerator(style: .medium)
    
    //System Image
    static let systemChevronLeft = "chevron.left"
    static let systemCart = "cart"
    static let systemMinusCircle = "minus.circle"
    static let systemPlusCircle = "plus.circle"
    static let systemHeartCircle = "heart.circle"
    static let systemStarFill = "star.fill"
    static let systemMagnifyingglass = "magnifyingglass"
    
    //Custom Image
    static let logoLineal = "logo-lineal"
    static let logoDark = "logo-dark"
    
    //Font
    
    //String
    
    //Misc
    
}
