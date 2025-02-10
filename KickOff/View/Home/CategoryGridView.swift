//
//  CategoryGridView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct CategoryGridView: View {
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: Constants.gridLayout, alignment: .center, spacing: Constants.columnSpacing) {
                Section(header: SectionView(rotateClockwise: false),
                        footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(Constants.categories) { category in
                        CategoryItemView(category: category)
                    } //: ForEach
                } //: Section
            } //: LazyHGrid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } //: ScrollView
    }
}

//MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constants.colorBackground)
    }
}
