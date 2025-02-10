//
//  FeaturedItemView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct FeaturedItemView: View {
    
    //MARK: - Properties
    let player: Player
    
    //MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: - Preview
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: Constants.players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constants.colorBackground)
    }
}
