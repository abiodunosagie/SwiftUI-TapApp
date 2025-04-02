//
//  ContentView.swift
//  TapApp
//
//  Created by Abiodun Osagie on 02/04/2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    @State private var currentPicIndex = 0
    var possiblePics = ["apple", "meat", "burger","dog"]
    
    // MARK: - FUNCTIONS
    func changePic() {
        if currentPicIndex == possiblePics.count - 1 {
            currentPicIndex = 0
        } else {
            currentPicIndex += 1
        }
    }
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image(possiblePics[currentPicIndex])
                .resizable()
                .scaledToFit()
                .frame(height: 300)
            
            Menu {
                ForEach(possiblePics.indices, id: \.self) { index in
                    Button(possiblePics[index]) {
                        currentPicIndex = index
                    }
                }
            } label: {
                Text("Select Image")
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(
                                        LinearGradient(
                                            colors: [
                                                .purple,
                                                .blue,
                                                .cyan,
                                                .green
                                            ],
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        ),
                                        lineWidth: 2
                                    )
                            )
                    )
                    .foregroundColor(.white)
                    .shadow(radius: 10, x: 0, y: 5)
            }
        }//: VSTACK
        .onReceive(timer) { _ in
            changePic()
        }
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
