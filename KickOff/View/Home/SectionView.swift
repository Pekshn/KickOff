//
//  SectionView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct SectionView: View {
    
    //MARK: - Properties
    @State var rotateClockwise: Bool
    
    //MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        } //: VStack
        .background(Constants.colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

//MARK: - Preview
struct SectionView_Preview: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(Constants.colorBackground)
    }
}
