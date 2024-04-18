//
//  UniverseDiscoveryView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/02/24.
//

import SwiftUI

struct UniverseDiscoveryView: View {
    
    // 選択中の機能を管理する状態変数
    @State private var selectedView: UniverseHeaderView.SelectedView = .discovery

    
    var body: some View {
        VStack {
            UniverseHeaderView(selectedView: $selectedView)
                .padding(.top)
            
            Spacer()
            
            
            Text("UniverseDiscoveryView")
            
            Spacer()
        }
    }
}

#Preview {
    UniverseDiscoveryView()
}
