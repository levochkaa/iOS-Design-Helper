// ContentView+Weights.swift

import SwiftUI

@ViewBuilder var weights: some View {
    Group {
        Text(".black - 900")
            .fontWeight(.black)
        
        Text(".heavy - 800")
            .fontWeight(.heavy)
        
        Text(".bold - 700")
            .fontWeight(.bold)
        
        Text(".semibold - 600")
            .fontWeight(.semibold)
        
        Text(".medium - 500")
            .fontWeight(.medium)
        
        Text(".regular - 400")
//                .fontWeight(.regular)
        
        Text(".light - 300")
            .fontWeight(.light)
        
        Text(".thin - 200")
            .fontWeight(.thin)
        
        Text(".ultraLight - 100")
            .fontWeight(.ultraLight)
    }
}
