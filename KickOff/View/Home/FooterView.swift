//
//  FooterView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct FooterView: View {
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text(Localization.companyInfo)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image(Constants.logoLineal)
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text(Localization.copyright)
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } //: VStack
        .padding()
    }
}

//MARK: - Preview
struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(Constants.colorBackground)
    }
}
