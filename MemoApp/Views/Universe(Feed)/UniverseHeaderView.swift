//
//  UniverseHeaderView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/02/24.
//

import SwiftUI

struct UniverseHeaderView: View {
    
    //    シートを表示させるために状態変数
    @State private var isShowingCurrentUserProfileView = false
    
    @State private var isShowingFeedView = false
    
    var body: some View {
        
        VStack(spacing:16) {
            
            HStack {
                
                Image(systemName:"person.2.fill")
                    .font(.system(size: 24, weight: .medium))
                    .frame(width: 40, height: 40)
                
                
                Spacer()
                
                Text("Universe")
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
                    SettingsView()
                }
            }
            .padding(.horizontal)
            
            HStack(spacing:20){

                    Text("My Friends")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .frame(width: 120)
                

                    Text("Discovery")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .frame(width: 130)
                
                
                
            }
            
            
        }
        
        
    }
}

#Preview {
    UniverseHeaderView()
}
