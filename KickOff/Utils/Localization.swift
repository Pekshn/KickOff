//
//  Localization.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import Foundation

struct Localization {
    
    //MARK: - Properties
    static var kick: String { Localizator.get("kick") }
    static var off: String { Localizator.get("off") }
    static var categories: String { Localizator.get("categories") }
    static var companyInfo: String { Localizator.get("company_info") }
    static var copyright: String { Localizator.get("copyright") }
    static var helmets: String { Localizator.get("helmets") }
    static var brands: String { Localizator.get("brands") }
    static var addToCart: String { Localizator.get("add_to_cart") }
    static var protectiveGear: String { Localizator.get("protective_gear") }
    static var ratings: String { Localizator.get("ratings") }
    static var sizes: String { Localizator.get("sizes") }
    static var price: String { Localizator.get("price") }
}

final class Localizator {
    
    static func get(_ key: String) -> String {
        return NSLocalizedString(key, comment: "")
    }
}
