//
//  FeaturedTabView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct FeaturedTabView: View {
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(Constants.players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            } //: ForEach
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

//MARK: - Preview
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 16 Pro")
            .background(Color.gray)
    }
}
