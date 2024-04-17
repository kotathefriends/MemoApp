//
//  FloatingButtonView.swift
//  MemoApp
//
//  Created by KOTA TAKAHASHI on 2024/04/17.
//

import SwiftUI
import UIKit

struct FloatingButtonView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    hapticFeedback()
                    print("Tapped!!")
                }, label: {
                    Image(systemName: "pencil")
                        .foregroundColor(.white)
                        .font(.system(size: 32))
                })
                .frame(width: 60, height: 60)
                .background(Color.black)
                .cornerRadius(30.0)
                .shadow(color: .gray, radius: 3, x: 3, y: 3)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16.0, trailing: 16.0))
            }
        }
    }

    private func hapticFeedback() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
}

#Preview {
    FloatingButtonView()
}
