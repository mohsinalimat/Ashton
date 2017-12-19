//
//  Mappings.swift
//  Ashton
//
//  Created by Michael Schwarz on 19.12.17.
//  Copyright © 2017 Michael Schwarz. All rights reserved.
//

#if os(iOS)
    import UIKit
#elseif os(macOS)
    import AppKit
#endif
import Foundation


// Defines mappings between HTML attributes and AttributedString keys
struct Mappings {

    struct UnderlineStyle {
        static let encode: [NSUnderlineStyle.RawValue: String] = [
            NSUnderlineStyle.styleSingle.rawValue: "single",
            NSUnderlineStyle.styleDouble.rawValue: "double",
            NSUnderlineStyle.styleThick.rawValue: "thick"
        ]
        static let decode: [String: NSUnderlineStyle] = [
            "single": .styleSingle,
            "double": .styleDouble,
            "thick": .styleThick
        ]
    }

    struct TextAlignment {
        static let encode: [NSTextAlignment: String] = [
            .left: "left",
            .center: "center",
            .right: "right",
            .justified: "justify",
            .natural: "left"
        ]
        static let decode: [String: NSTextAlignment] = [
            "left": .left,
            "center": .center,
            "right": .right,
            "justify": .justified
        ]
    }

    struct TextDecoration {
        static let decode: [String: NSAttributedStringKey] = [
            "underline": .underlineStyle,
            "line-through": .strikethroughStyle
        ]
    }
}
