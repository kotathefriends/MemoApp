//
//  MainTabView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/01/31.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView() // ホームビューのタブ
                .tabItem {
                    Label("ホーム", systemImage: "house")
                }

            FeedView() // フィードビューのタブ
                .tabItem {
                    Label("フィード", systemImage: "list.bullet")
                }
        }
    }
}



// プレビュー
struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
