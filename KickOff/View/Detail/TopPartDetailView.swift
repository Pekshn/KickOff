//
//  TopPartDetailView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct TopPartDetailView: View {
    
    //MARK: - Properties
    @State private var isAnimating = false
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            //Price
            VStack(alignment: .leading, spacing: 6) {
                Text(Localization.price)
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? Constants.sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            } //: VStack
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? Constants.sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
        } //: HStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        } //: onAppear
    }
}

//MARK: - Preview
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
