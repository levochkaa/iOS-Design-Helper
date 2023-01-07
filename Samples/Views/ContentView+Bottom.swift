// ContentView+Bottom.swift

import SwiftUI

extension ContentView {
    @ViewBuilder var bottom: some View {
        HStack {
            VStack {
                Text("fonts")
                Toggle("", isOn: $fontsOn)
            }
            
            VStack {
                Text("weights")
                Toggle("", isOn: $weightsOn)
            }
            
            VStack {
                Text("styles")
                Toggle("", isOn: $stylesOn)
            }
            
            VStack {
                Text("widths")
                Toggle("", isOn: $widthsOn)
            }
            
            VStack {
                Text("designs")
                Toggle("", isOn: $designOn)
            }
        }
        .labelsHidden()
    }
}
