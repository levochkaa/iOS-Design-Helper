// ContentView+Designs.swift

import SwiftUI

extension ContentView {
    @ViewBuilder var designs: some View {
        Group {
            Text(".monospaced")
                .fontDesign(.monospaced)
            
            Text(".rounded")
                .fontDesign(.rounded)
            
            Text(".serif")
                .fontDesign(.serif)
            
            Text(".default")
//                .fontDesign(.default)
        }
        .available(.ios161, appVersion)
    }
}
