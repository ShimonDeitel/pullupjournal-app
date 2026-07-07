import SwiftUI

enum Theme {
    static let background = Color(hex: "#161616")
    static let foreground = Color(hex: "#F1EDE4")
    static let accent = Color(hex: "#C1440E")
    static let accentSecondary = Color(hex: "#8A8D8F")

    static var titleFont: Font { .system(.title2, design: .default).weight(.bold) }
    static var bodyFont: Font { .system(.body, design: .default) }
    static var captionFont: Font { .system(.caption, design: .default) }
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var v: UInt64 = 0
        Scanner(string: s).scanHexInt64(&v)
        let r = Double((v >> 16) & 0xFF) / 255.0
        let g = Double((v >> 8) & 0xFF) / 255.0
        let b = Double(v & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
