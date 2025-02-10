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
            Text("Kick".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Off".uppercased())
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
