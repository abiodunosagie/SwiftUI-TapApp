//
//  ContentView.swift
//  TapApp
//
//  Created by Abiodun Osagie on 02/04/2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var possiblePics = ["apple", "meat", "burger","dog"]
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image(possiblePics[2])
                .resizable()
                .scaledToFit()
                .frame(height: 300)
            
        }
        .padding()
    }
}


// MARK: - PREVIEW
#Preview {
    ContentView()
}
