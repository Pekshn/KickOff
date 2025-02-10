//
//  ContentView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.safeAreaTopInset)
                        .background(.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                                .padding(.vertical, 10)
                            
                            CategoryGridView()
                            
                            TitleView(title: Localization.helmets)
                            
                            LazyVGrid(columns: Constants.gridLayout, spacing: 15) {
                                ForEach(Constants.products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            Constants.feedback.impactOccurred()
                                            withAnimation(.easeInOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            } //: withAnimation
                                        } //: onTapGesture
                                } //: ForEach
                            } //: LazyVGrid
                            .padding(15)
                            
                            TitleView(title: Localization.brands)
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        } //: VStack
                    } //: ScrollView
                } //: VStack
                .background(Constants.colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 16 Pro")
            .environmentObject(Shop())
    }
}
