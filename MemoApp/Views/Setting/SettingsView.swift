//
//  CSettingsView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/02/02.
//

import SwiftUI

struct SettingsView: View {
    // シート表示用の状態変数
    @State private var showingDetail1 = false
    @State private var showingDetail2 = false
    @State private var showingDetail3 = false
    @State private var showingDetail4 = false

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("プロフィール")) {
                    
                    Button(action: { showingDetail1 = true }) {
                        HStack {
                            Image(systemName: "person.circle.fill")
                                .foregroundColor(.gray)
                            Text("プロフィール画像")
                                .foregroundColor(.black)
                        }
                    }
                    .sheet(isPresented: $showingDetail1) {
                        EditProfileImageView()
                    }

                    Button(action: { showingDetail2 = true }) {
                        HStack {
                            Image(systemName: "textformat")
                                .foregroundColor(.gray)
                            Text("名前")
                                .foregroundColor(.black)
                        }
                    }
                    .sheet(isPresented: $showingDetail2) {
                        EditUserNamelView()
                    }

                    Button(action: { showingDetail3 = true }) {
                        HStack {
                            Image(systemName: "at.circle.fill")
                                .foregroundColor(.gray)
                            Text("ユーザーネーム")
                                .foregroundColor(.black)
                        }
                    }
                    .sheet(isPresented: $showingDetail3) {
                        EditUserIDlView()
                    }
                }

                Section(header: Text("設定")) {
                    
                    Button(action: { showingDetail4 = true }) {
                        HStack {
                            Image(systemName: "paintpalette.fill")
                                .foregroundColor(.gray)
                            Text("テーマ")
                                .foregroundColor(.black)
                        }
                    }
                    .sheet(isPresented: $showingDetail4) {
                        EditThemaView()
                    }
                }
            }
            .navigationTitle("設定")
        }
    }

    }

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
