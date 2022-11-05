//
//  SwiftUIView.swift
//  
//
//  Created by Radhika Senthil on 11/5/22.
//

import SwiftUI

@available(macOS 12.0, *)
struct MyAsyncImage: View {
    
    let imageURL : String
    let imageWidth : Double
    let imageHeight : Double
    let isRemote: Bool
    
    var body: some View {
        
        HStack {
            if(isRemote) {
                AsyncImage(
                    url: URL(string: imageURL),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: imageWidth, height: imageHeight)
                    },
                    placeholder: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: imageWidth, height: imageHeight, alignment: .leading)
                            .foregroundColor(.gray)
                    }
                )
            } else {
                Image(imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imageWidth, height: imageHeight)
                
            }
        }
        
    }
}

@available(macOS 12.0, *)
struct MyAsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        MyAsyncImage(imageURL: "", imageWidth: 80, imageHeight: 80, isRemote: true)
    }
}
