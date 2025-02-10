//
//  LogoView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct LogoView: View {
    
    //MARK: - Body
    var body: some View {
        HStack(spacing: 4) {
            Text(Localization.kick.uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image(Constants.logoDark)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text(Localization.off.uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        } //: HStack
    }
}

//MARK: - Preview
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
