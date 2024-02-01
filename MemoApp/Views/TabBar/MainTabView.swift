//
//  MainTabView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/01/31.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectioin = 1
    
//    ハプティックフィードバックを生成するための関数
    func generateHapticFeedback() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.prepare()
        generator.impactOccurred()
    }
    
    var body: some View {
        TabView {
            HomeView() // ホームビューのタブ
                .tabItem {
                    Label("ホーム", systemImage: "house")
                }
                .tag(1)
                .onAppear {
                    if selectioin == 1 {
                        generateHapticFeedback()
                    }
                }

            FeedView() // フィードビューのタブ
                .tabItem {
                    Label("フィード", systemImage: "list.bullet")
                }
                .tag(2)
                .onAppear {
                    if selectioin == 2 {
                        generateHapticFeedback()
                    }
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
