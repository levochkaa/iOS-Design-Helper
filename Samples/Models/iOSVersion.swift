// iOSVersion.swift

import Foundation

enum iOSVersion: String, CaseIterable {
    case ios13 = "iOS 13"
    case ios14 = "iOS 14"
    case ios15 = "iOS 15"
    case ios16 = "iOS 16"
    case ios161 = "iOS 16.1"
}

extension iOSVersion: Comparable {
    static func < (lhs: iOSVersion, rhs: iOSVersion) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}
