//
//  BrandGridView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct BrandGridView: View {
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: Constants.gridLayout, spacing: Constants.columnSpacing) {
                ForEach(Constants.brands) { brand in
                    BrandItemView(brand: brand)
                }
            } //: LazyHGrid
            .frame(height: 200)
            .padding(15)
        } //: ScrollView
    }
}

//MARK: - Preview
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(Constants.colorBackground)
    }
}
