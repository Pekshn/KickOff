//
//  Product.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

struct Product: Codable, Identifiable {
    
    //MARK: - Properties
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var red: Double { color[0] }
    var green: Double { color[1] }
    var blue: Double { color[2] }
    var formattedPrice: String { "$\(price)" }
}
