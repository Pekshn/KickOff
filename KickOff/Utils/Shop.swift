//
//  Shop.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import Foundation

class Shop: ObservableObject {
    
    //MARK: - Properties
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
