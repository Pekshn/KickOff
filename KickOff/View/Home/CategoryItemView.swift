//
//  CategoryItemView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct CategoryItemView: View {
    
    //MARK: - Properties
    let category: Category
    
    //MARK: - Body
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            } //: HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }
    }
}

//MARK: - Preview
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: Constants.categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constants.colorBackground)
    }
}
