//
//  CSettingsView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/02/02.
//

import SwiftUI

struct SettingsView: View {
    // シート表示用の状態変数
    @State private var showingSheet1 = false
    @State private var showingSheet2 = false
    @State private var showingSheet3 = false
    @State private var showingSheet4 = false

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("セクション1")) {
                    // 項目1
                    Button(action: { showingSheet1 = true }) {
                        HStack {
                            Text("項目1")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                    .sheet(isPresented: $showingSheet1) {
                        DetailView(text: "項目1の詳細")
                    }

                    // 項目2
                    Button(action: { showingSheet2 = true }) {
                        HStack {
                            Text("項目2")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                    .sheet(isPresented: $showingSheet2) {
                        DetailView(text: "項目2の詳細")
                    }
                }

                Section(header: Text("セクション2")) {
                    // 項目3
                    Button(action: { showingSheet3 = true }) {
                        HStack {
                            Text("項目3")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                    .sheet(isPresented: $showingSheet3) {
                        DetailView(text: "項目3の詳細")
                    }

                    // 項目4
                    Button(action: { showingSheet4 = true }) {
                        HStack {
                            Text("項目4")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                    .sheet(isPresented: $showingSheet4) {
                        DetailView(text: "項目4の詳細")
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("設定")
        }
    }
}

// 詳細ビュー
struct DetailView: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
