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
    
    @State private var isShowingFriendsView = false

    
    // 選択中の機能を管理する状態変数
    @Binding var selectedView: SelectedView

    
    enum SelectedView {
        case friends, discovery
    }
    
    
    var body: some View {
        
        VStack(spacing:16) {
            
            HStack {
                
                Button(action: {
                    self.isShowingFriendsView = true
                }) {
                    Image(systemName:"person.2.fill")
                        .font(.system(size: 24, weight: .medium))
                        .frame(width: 40, height: 40)
                        .foregroundColor(.black)
                }
                .sheet(isPresented:$isShowingFriendsView) {
                    FriendsView()
                }
                
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
            
            // 機能選択ボタン
            HStack(spacing: 20) {
                Button(action: {
                    selectedView = .friends
                }) {
                    Text("My Friends")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(selectedView == .friends ? .yellow : .black)
                        .frame(width: 120)
                }

                Button(action: {
                    selectedView = .discovery
                }) {
                    Text("Discovery")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(selectedView == .discovery ? .yellow : .black)
                        .frame(width: 130)
                }
            }
            
            
        }
        .padding(.top, 8)
        .frame(height: 100)
    }
}


#Preview {
    UniverseHeaderView(selectedView: .constant(.friends))
}
