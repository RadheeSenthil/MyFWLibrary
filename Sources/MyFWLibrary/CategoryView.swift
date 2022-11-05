//
//  SwiftUIView.swift
//  
//
//  Created by Radhika Senthil on 11/5/22.
//

import SwiftUI

@available(macOS 12.0, iOS 15.0, *)
public struct CategoryView: View {
    
    let title : String
    let image : String
    
    init(title: String, image: String) {
        
        self.title = title
        self.image = image
    }
    
    
    public var body: some View {
        
        HStack {
            Text(title)
                .font(.title2)
                .bold()
                .foregroundColor(Color(hex: 0xfdfdfd))

            
            Spacer()
                       
            MyAsyncImage(imageURL: image, imageWidth: 80, imageHeight: 80, isRemote: false)
            
        }
        .padding()
        .background(
            Rectangle()
                .fill(Color(hex: 0xc4c4c4))
        )
        
        
    }
}

@available(macOS 12.0, iOS 15.0, *)
struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        
        CategoryView(title: "New & Featured", image: "")
    }
}


