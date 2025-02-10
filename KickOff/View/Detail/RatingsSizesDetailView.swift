//
//  RatingsSizesDetailView.swift
//  KickOff
//
//  Created by Petar  on 10.2.25..
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    //MARK: - Properties
    private let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Constants.colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button {
                            
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 25, height: 25)
                                .background(Constants.colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        } //: Button
                    } //: ForEach
                } //: HStack
            } //: VStack
            
            Spacer()
            
            //Sizes
            VStack(alignment: .trailing, spacing: 4) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Constants.colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button {
                            
                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.black)
                                .foregroundColor(Constants.colorGray)
                                .frame(width: 28, height: 28)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Constants.colorGray, lineWidth: 2)
                                )
                        } //: Button
                    } //: ForEach
                } //: HStack
            } //: VStack
        } //: HStack
    }
}

//MARK: - Preview
struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
