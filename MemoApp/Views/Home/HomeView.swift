//
//  HomeView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/02/01.
//

import SwiftUI

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack {
            
            HomeHeaderView()
            
    //        Spacer()
            
            ScrollView {
                
                //        This week
                        VStack(alignment: .leading, spacing: 8) {
                            Text("This week")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .padding(.horizontal, 20)
                            
                            ScrollView(.horizontal) {
                                HStack(spacing: 8) {
                                    MemoDetailView()
                                    MemoDetailView()
                                    MemoDetailView()
                                }
                            }
                //            Spacer()
                        }
                        
                //      week 2
                        VStack(alignment: .leading, spacing: 8) {
                            Text("2024/01/21~2024/01/27")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .padding(.horizontal, 20)

                            
                            ScrollView(.horizontal) {
                                HStack(spacing: 8) {
                                    MemoDetailView()
                                    MemoDetailView()
                                    MemoDetailView()
                                }
                            }
                            Spacer()
                        }
                        
                //      week 3
                        VStack(alignment: .leading, spacing: 8) {
                            Text("2024/01/21~2024/01/27")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .padding(.horizontal, 20)

                            
                            ScrollView(.horizontal) {
                                HStack(spacing: 8) {
                                    MemoDetailView()
                                    MemoDetailView()
                                    MemoDetailView()
                                }
                            }
                            Spacer()
                        }
                
                //      week 4
                        VStack(alignment: .leading, spacing: 8) {
                            Text("2024/01/21~2024/01/27")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .padding(.horizontal, 20)

                            
                            ScrollView(.horizontal) {
                                HStack(spacing: 8) {
                                    MemoDetailView()
                                    MemoDetailView()
                                    MemoDetailView()
                                }
                            }
                            Spacer()
                        }
                
            }
        }
       
        
    }
}

#Preview {
    HomeView()
}
