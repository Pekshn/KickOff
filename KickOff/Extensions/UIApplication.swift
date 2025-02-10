//
//  UIApplication.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import UIKit

extension UIApplication {
    
    //MARK: - Properties
    var safeAreaTopInset: CGFloat {
        connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first(where: { $0.isKeyWindow })?
            .safeAreaInsets.top ?? 0
    }
}
