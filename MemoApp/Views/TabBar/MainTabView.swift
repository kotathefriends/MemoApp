//
//  MainTabView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/01/31.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selection = 1
    
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView() // ホームビューのタブ
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(1)
                

            FeedView() // フィードビューのタブ
                .tabItem {
                    Label("Feed", systemImage: "list.bullet")
                }
                .tag(2)
        }
        .onChange(of: selection) {
            if selection == 2 {
                generateHapticFeedback()
            }
    }
}
    // ハプティックフィードバックを生成するための関数
        private func generateHapticFeedback() {
            let generator = UIImpactFeedbackGenerator(style: .light)
            generator.prepare()
            generator.impactOccurred()
        }
    }


// プレビュー
struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
