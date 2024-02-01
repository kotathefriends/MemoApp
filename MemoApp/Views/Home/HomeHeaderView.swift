//
//  HomeHeaderView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/02/01.
//

import SwiftUI

struct HomeHeaderView: View {
    
//    シートを表示させるために状態変数
    @State private var isShowingCurrentUserProfileView = false
    
    var body: some View {
        // Header
        VStack (alignment: .leading, spacing: 8) {
            Text("Wednesday,January 31")
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(Color(red: 0.65, green: 0.65, blue: 0.65))
                .padding()
                
            HStack {
                Text("Hi, emma_amme")
                    .fontWeight(.bold)
                    .font(.system(size: 32))
                Spacer()
                
                Button(action: {
                    //                    シートを表示させる
                    self.isShowingCurrentUserProfileView = true
                }) {
                    
                    Image("emmacorrin-2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                }
                .sheet(isPresented: $isShowingCurrentUserProfileView) {
                    CurrentUserProfileView()
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    HomeHeaderView()
}
