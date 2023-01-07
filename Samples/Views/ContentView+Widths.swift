// ContentView+Widths.swift

import SwiftUI

extension ContentView {
    @ViewBuilder var widths: some View {
        Group {
            Text(".expanded")
                .fontWidth(.expanded)
            
            Text(".standard")
//                .fontWidth(.standard)
            
            Text(".condensed")
                .fontWidth(.condensed)
            
            Text(".compressed")
                .fontWidth(.compressed)
        }
        .available(.ios16, appVersion)
    }
}
