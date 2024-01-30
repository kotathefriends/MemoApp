//
//  MemoDetailView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/01/30.
//

import SwiftUI

struct MemoDetailView: View {
    var body: some View {
        ZStack {
            Color("Yellow")
                .frame(width: 150, height: 150)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 4) {
                Text("2024/01/30")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .fontWeight(.black)
                    .padding(.horizontal, 4)
                    .padding(.top, 8)
                    .frame(width: 140, height: 16, alignment: .leading)
                    .lineLimit(1) // 1行に制限
                    .truncationMode(.tail)

                Text("DescriptionnscriptionDescriptionDenscriptionDescriptionDenscriptionDescriptionDenscriptionDescriptionDenscriptionDescriptionDenscriptionDescriptionDenscriptionDescriptionDeDescriptionDDescriptionDDescriptionD")
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                    .padding(.horizontal, 8)
                    .padding(.top, 4)
                    .frame(width: 148, height: 90, alignment: .leading)
                    .lineLimit(6) // 6行に制限
                    .truncationMode(.tail) // 末尾で切り詰め
                
                
                Spacer(minLength: 2)


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
    MemoDetailView()
}


