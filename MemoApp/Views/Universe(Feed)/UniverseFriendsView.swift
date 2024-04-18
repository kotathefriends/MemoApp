//
//  UniverseFriendsView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/02/01.
//

import SwiftUI

struct UniverseFriendsView: View {
    
    @State private var selectedView: UniverseHeaderView.SelectedView = .friends

    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            UniverseHeaderView(selectedView: $selectedView)
                .padding(.top)
            
            Spacer()
            
            ScrollView {
                
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(0..<10, id: \.self) { _ in
                        FeedMemoMediumView()
                    }
                }
                .padding(.horizontal, 20)
            }
            
            
            Spacer()
        }
    }
}

#Preview {
    UniverseFriendsView()
}
