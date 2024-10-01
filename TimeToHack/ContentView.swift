//
//  ContentView.swift
//  TimeToHack
//
//  Created by Dan Murray on 01/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn: Bool = false  // Track the slider's state
    
    var body: some View {
        VStack {
            // "Time to" text appears above the slider when toggle is on
            if isOn {
                Text("Time to")
                    .font(.system(size: 50, weight: .bold))  // Increased font size and weight
                    .foregroundColor(.green)
                    .padding(.bottom, 50)
                    .transition(.opacity)  // Smooth transition for appearance
            }
            
            // Slider (Toggle)
            Toggle(isOn: $isOn) {
                Text("")  // Empty label for the slider
            }
            .toggleStyle(SwitchToggleStyle(tint: .blue))  // Use a switch-style slider
            .labelsHidden()  // Hide the labels to make it just a slider
            .scaleEffect(2)  // Make the slider bigger
            .padding(.bottom, 50)
            
            // "Hack" text appears below the slider when toggle is on
            if isOn {
                Text("Hack")
                    .font(.system(size: 50, weight: .bold))  // Increased font size and weight
                    .foregroundColor(.green)  // Make "Hack" text green
                    .padding(.top, 50)
                    .transition(.opacity)  // Smooth transition for appearance
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)  // Fill the entire screen
        .background(Color(UIColor.black))  // Set background to black
        .animation(.easeInOut, value: isOn)  // Animate view changes when `isOn` changes
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
