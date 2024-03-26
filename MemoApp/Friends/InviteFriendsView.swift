//
//  InviteFriendsView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/03/12.
//

import SwiftUI

struct InviteFriendsView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 54) {
                ZStack {
                    Image("IGShareBackGround")
                        .resizable()
                        .frame(width: 270, height: 480)
                    InviteFriendsSareCardView()
                }
                
                Button(action: {
                    print("Instagram ストーリーにシェア")
                }) {
                    HStack {
                        Text("Share IG stories")
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "square.and.arrow.up")
                    }
                    .foregroundColor(.black)
                    .padding(.horizontal, 20)
                }
            }
            .navigationTitle("Invite Friends")
        }
    }
}

#Preview {
    InviteFriendsView()
}
