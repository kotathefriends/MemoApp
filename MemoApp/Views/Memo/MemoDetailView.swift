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
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundStyle(Color("Yellow"))
            VStack {
                Text("2024/01/30")
                
                Text("Description")
                
            }
            
        }
    }
}

#Preview {
    MemoDetailView()
}
