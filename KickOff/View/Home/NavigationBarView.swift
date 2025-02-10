//
//  NavigationBarView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct NavigationBarView: View {
    
    //MARK: - Properties
    @State private var isLogoAnimated = false
    
    //MARK: - Body
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            } //: Button
            
            Spacer()
            
            LogoView()
                .opacity(isLogoAnimated ? 1 : 0)
                .offset(x: 0, y: isLogoAnimated ? 0 : -30)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.6)) {
                        isLogoAnimated.toggle()
                    }
                } //: onAppear
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                } //: ZStack
            } //: Button
        } //: HStack
    }
}

//MARK: - Preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
