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
                Image("IGShareBackGround")
                    .resizable()
                    .frame(width: 270, height: 480)
                
                HStack {
                    Text("Share IG stories")
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.up")
                    
                }
                .padding(.horizontal, 20)
                .navigationTitle("Invite Friends")
                
            }
        }
    }
}

#Preview {
    InviteFriendsView()
}
