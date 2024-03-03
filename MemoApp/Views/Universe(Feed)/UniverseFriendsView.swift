//
//  UniverseFriendsView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/02/01.
//

import SwiftUI

struct UniverseFriendsView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            UniverseHeaderView()
                .padding(.top)
            
            Spacer()
            
            ScrollView {
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(0..<10, id: \.self) { _ in
                            MemoDetailView()
                    }
                }
            }
            
            
            Spacer()
        }
    }
}

#Preview {
    UniverseFriendsView()
}
