//
//  Friends.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/03/11.
//

import SwiftUI

struct FriendsView: View {
    
    @State private var searchText = ""
    @State private var isSearching = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                SearchBarView(searchText: $searchText, isSearching: $isSearching)
                if isSearching {
                    // 検索結果の表示など
                    Text("Showing search results for \"\(searchText)\"")
                }
                // ここにフレンドリストやその他のコンテンツを配置
                InviteFriendsCardView()
                
                Spacer()
                
            }
            .navigationBarTitle("Friends")
        }
    }
}
#Preview {
    FriendsView()
}
