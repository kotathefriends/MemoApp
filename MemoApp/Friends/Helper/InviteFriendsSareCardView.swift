//
//  InviteFriendsSareCardView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/03/26.
//

import SwiftUI

struct InviteFriendsSareCardView: View {
    var body: some View {
        ZStack {
            Color("Yellow")
                .frame(width: 150, height: 150)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 4) {
                Text("Invite U")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .fontWeight(.black)
                    .padding(.horizontal, 4)
                    .padding(.top, 8)
                    .frame(width: 140, height: 16, alignment: .leading)
                    .truncationMode(.tail)
                
//                Spacer(minLength: 2) // 8のスペースを追加

                
                Image("FakeQR")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(.top, 8)

                
                HStack {
                    Image("emmacorrin-2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .clipShape(Circle())
                    Text("@emma_amme")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                    
                }
                .padding(.leading, -16)


                Text("2023/01/30 AM 11:48\nshibuya, Tokyo")
                    .font(.system(size: 10))
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                    .padding(.horizontal, 4)
                    .frame(width: 140, height: 24, alignment: .leading)
                    .lineLimit(2) // 2行に制限
            }
            .frame(width: 150, height: 150, alignment: .center)
            .padding(.all, 8) // 内部コンテンツに対するパディングを追加
            }
            
        
    }
}


#Preview {
    InviteFriendsSareCardView()
}
