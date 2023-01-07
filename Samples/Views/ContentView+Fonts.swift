// ContentView+Fonts.swift

import SwiftUI

extension ContentView {
    @ViewBuilder var fonts: some View {
        Group {
            Text(".largeTitle - 34")
                .font(.largeTitle)
            
            Text(".title - 28")
                .font(.title)
            
            Text(".title2 - 22")
                .available(.ios14, appVersion)
                .font(.title2)
            
            Text(".title3 - 20")
                .available(.ios14, appVersion)
                .font(.title3)
            
            Text(".headline - 20 (.semibold)")
                .font(.headline)
            
            Text(".subheadline - 15")
                .font(.subheadline)
            
            Text(".body - 17")
//                .font(.body)
            
            Text(".callout - 16")
                .font(.callout)
            
            Text(".footnote - 13")
                .font(.footnote)
            
            Group {
                Text(".caption - 12")
                    .font(.caption)
                
                Text(".caption2 - 11")
                    .available(.ios14, appVersion)
                    .font(.caption2)
            }
        }
    }
}
