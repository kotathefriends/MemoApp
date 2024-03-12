//
//  InviteFriendsCardView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/03/12.
//

import SwiftUI

//16進数のカラーを使うための処理
extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

struct InviteFriendsCardView: View {
    var body: some View {
        
        
        HStack(spacing: 8) {
            Image("emmacorrin-2")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            .clipShape(Circle())
            
            
            VStack(alignment: .leading) {
                Text("Invite a friend")
                    .fontWeight(.semibold)
                
                Text("@emma_amme")
                    .font(.system(size: 16))

            }
            Spacer()
            
            Image(systemName: "square.and.arrow.up")
        }
        .padding(.horizontal, 16)
        .frame(width: 350, height: 72)
        .background(Color(hex: 0xF4EFD9))
        .cornerRadius(14)

    }
}

#Preview {
    InviteFriendsCardView()
}
