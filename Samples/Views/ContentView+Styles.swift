// ContentView+Styles.swift

import SwiftUI

extension ContentView {
    @ViewBuilder var styles: some View {
        Group {
            Text(".italic()")
                .italic()
            
            Text(".monospacedDigit() - 11:11")
                .available(.ios15, appVersion)
                .monospacedDigit()
            
            Text(".bold()")
                .bold()
            
            Text(".strikethrough()")
                .strikethrough()
            
            Text(".underline()")
                .underline()
            
            Text(".kerning(13)")
                .kerning(13)
            
            Text(".tracking(-1)")
                .tracking(-1)
        }
    }
}
