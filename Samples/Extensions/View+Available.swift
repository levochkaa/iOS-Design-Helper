// View+Available.swift

import SwiftUI

extension View {
    @ViewBuilder func available(_ version: iOSVersion, _ appVersion: iOSVersion) -> some View {
        if version <= appVersion {
            self
        }
    }
}
