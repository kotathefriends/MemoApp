//
//  ContentView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/01/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Header
        VStack (alignment: .leading, spacing: 8) {
            Text("Wednesday,January 31")
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(Color(red: 0.65, green: 0.65, blue: 0.65))
                .padding()
                
            HStack {
                Text("Hi, emma_amme")
                    .fontWeight(.bold)
                    .font(.system(size: 32))
                Spacer()
                Image("emmacorrin-2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
            }
            .padding(.horizontal)
        }
        
        Spacer()
        
        MemoDetailView()
        
    }
}

#Preview {
    ContentView()
}
