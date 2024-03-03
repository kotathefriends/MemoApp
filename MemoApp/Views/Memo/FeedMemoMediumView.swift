//
//  FeedMemoDetailView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/03/03.
//

import SwiftUI

struct FeedMemoMediumView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack(spacing: 4) {
                Image("hanni")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                Text("hanni_nj")
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
            }
            MemoMediumlView()
                .padding(.leading, -8)
                .padding(.top, -12)
        }
        
    }
}

#Preview {
    FeedMemoMediumView()
}
