//
//  LoadImageFromRemoteServer.swift
//  CupcakeCorner
//
//  Created by peter wi on 2/15/22.
//

import SwiftUI

struct LoadImageFromRemoteServer: View {
    var body: some View {
        
        /*
         AsyncImage: load a remote image from the internet
         SwiftUI doesn't know about the image until our code is run and the image is downloaded, so it isn't able to size it appropriately ahead of time.
         */
        
        /*
         first solution: use scale to load a (3x) scale image,
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png"), scale: 3)
        
        */
        
        /* this doesn't work.
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png"))
            .frame(width: 200, height: 200)
         
         nor
         
         AsyncImage(url: URL(string: "https://hws.dev/img/logo.png"))
             .resizable()
             .frame(width: 200, height: 200)
        */
        
        /*
         second solution:
         // passes us the final image view once it’s ready, which we can then customize as needed. As a bonus, this also gives us a second closure to customize the placeholder as needed.
         
         AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { image in
                     image
                         .resizable()
                         .scaledToFit()
                 } placeholder: {
                    // a little spinner activity indicator instead of a solid color.
                     ProgressView()
                 }
                 .frame(width: 200, height: 200)
         */

        
        /*
         third solution: want complete control over your remote image.
         
         creating AsyncImage that tells us whether the image was loaded, hit an error, or hasn’t finished yet. This is particularly useful for times when you want to show a dedicated view when the download fails – if the URL doesn’t exist, or the user was offline, etc.
         */
          
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)
        
    }
}

struct LoadImageFromRemoteServer_Previews: PreviewProvider {
    static var previews: some View {
        LoadImageFromRemoteServer()
    }
}
