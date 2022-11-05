//
//  SwiftUIView.swift
//  
//
//  Created by Radhika Senthil on 11/5/22.
//

import SwiftUI

@available(macOS 12.0, iOS 15.0, *)
extension Color {
    
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}


@available(macOS 12.0, iOS 15.0, *)
struct ColorExt_Previews: PreviewProvider {
    static var previews: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(hex: 0xFFCCDD))
  
    }
}
