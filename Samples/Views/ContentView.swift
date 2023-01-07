// ContentView.swift

import SwiftUI

struct ContentView: View {
    
    @State var alliOSVersions = iOSVersion.allCases.map { $0.rawValue }
    
    @AppStorage("appVersion") var appVersion: iOSVersion = .ios161
    @AppStorage("selectedVersion") var selectedVersion = iOSVersion.ios161.rawValue
    
    @AppStorage("weightsOn") var weightsOn = false
    @AppStorage("stylesOn") var stylesOn = false
    @AppStorage("widthsOn") var widthsOn = false
    @AppStorage("designOn") var designOn = false
    @AppStorage("fontsOn") var fontsOn = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                if fontsOn {
                    fonts
                }
                
                if weightsOn {
                    weights
                }
                
                if stylesOn {
                    styles
                }
                
                if widthsOn {
                    widths
                }
                
                if designOn {
                    designs
                }
            }
            .frame(maxWidth: .infinity)
        }
        .available(.ios13, appVersion)
        .frame(minHeight: 0, maxHeight: .infinity)
        .safeAreaInset(edge: .bottom) {
            bottom
                .padding(.top, 5)
                .background(.black)
        }
        .safeAreaInset(edge: .top) {
            Picker(selectedVersion, selection: $selectedVersion) {
                ForEach(alliOSVersions, id: \.self) {
                    Text($0)
                }
            }
            .frame(maxWidth: .infinity)
            .background(.black)
        }
        .onChange(of: selectedVersion) { newVersion in
            appVersion = iOSVersion(rawValue: newVersion)!
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
