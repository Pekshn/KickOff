//
//  AddToCartDetailView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct AddToCartDetailView: View {
    
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        Button {
            Constants.feedback.impactOccurred()
        } label: {
            Spacer()
            Text(Localization.addToCart.uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        } //: Button
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? Constants.sampleProduct.red,
                  green: shop.selectedProduct?.green ?? Constants.sampleProduct.green,
                  blue: shop.selectedProduct?.blue ?? Constants.sampleProduct.blue)
            .clipShape(Capsule())
        )
    }
}

//MARK: - Preview
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
