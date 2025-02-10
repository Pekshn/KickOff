//
//  AddToCartDetailView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct AddToCartDetailView: View {
    
    //MARK: - Body
    var body: some View {
        Button {
            
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        } //: Button
        .padding(15)
        .background(
            Color(red: Constants.sampleProduct.red,
                  green: Constants.sampleProduct.green,
                  blue: Constants.sampleProduct.blue)
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
    }
}
