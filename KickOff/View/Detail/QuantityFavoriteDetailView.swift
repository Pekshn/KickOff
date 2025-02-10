//
//  QuantityFavoriteDetailView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    
    //MARK: - Properties
    @State private var counter: Int = 0
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    Constants.feedback.impactOccurred()
                    counter -= 1
                }
            } label: {
                Image(systemName: Constants.systemMinusCircle)
                    .opacity(counter == 0 ? 0.2 : 1)
            } //: Button
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)

            Button {
                if counter < 10 {
                    Constants.feedback.impactOccurred()
                    counter += 1
                }
            } label: {
                Image(systemName: Constants.systemPlusCircle)
                    .opacity(counter == 10 ? 0.2 : 1)
            } //: Button
            
            Spacer()
            
            Button {
                Constants.feedback.impactOccurred()
            } label: {
                Image(systemName: Constants.systemHeartCircle)
                    .foregroundColor(.pink)
            } //: Button
        } //: HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

//MARK: - Preview
struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
