//
//  SearchBarView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/03/12.
//

import SwiftUI

// SearchBar.swift
struct SearchBarView: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool
    
    var body: some View {
        HStack {
            TextField("Add friends, search friends", text: $searchText) { isSearchingNow in
                isSearching = isSearchingNow
            }
            .padding(8)
            .padding(.horizontal, 25)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                    
                    if isSearching {
                        Button(action: {
                            isSearching = false
                            searchText = ""
                            // キーボードを閉じるアクション
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        }) {
                            Text("Cancel")
                                .foregroundColor(.blue)
                        }
                    }
                }
            )
        }
        .padding(.horizontal)
        .padding(.top, 8)
    }
}

#Preview {
    SearchBarView(searchText: .constant(""), isSearching: .constant(false))
        }
