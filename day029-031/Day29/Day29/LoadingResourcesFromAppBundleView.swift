//
//  LoadingResourcesFromAppBundleView.swift
//  Day29
//
//  Created by peter wi on 11/20/21.
//

import SwiftUI

struct LoadingResourcesFromAppBundleView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    /*
     Image -> SwiftUI knows to look in your app's asset catalog to find the artwork.
     Other data such as text, XML, or JSON -> same work regardless of what file types you're loading
     
     When Xcode builds your iOS app, it creates "bundle": it allows the system to store all the files for a single app in one place - the binary code, all the artwork, plus any extra files we need all in one place.
     
     In the future, you can actually include multiple bundles in a single app, allowing you to write things like Siri extensions, iMessage apps, widgets, and more, all inside a single iOS app bundle. Although these get included with our app's download from the App Store, they these other bundles are stored separately from our main app bundle - our main iOS app code and resources.
     
     URL: it stores the locations of files
     
     Bundle.main.url(): If we want to read the URL for a file in our main app, we use it.
        - If the file exists, it will be sent back to us, otherwise we'll get back nil, so this is an optional URL.
        ==> we need to unwrap this..
     if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
        // we found the file in our bundle.
        // what's inside the URL doesn't really matter.
        // once we have a URL, we can load it into a string with a special initializer:
            // String(contentsOf:): if we give this a file URL, it will send back a string containing the contents of that file if it can be loaded. If it can't be loaded it throws an error, so you need to call this using try or try? like this:
        
        if let fileContents = try? String(contentsOf: fileURL) {
            // we loaded the file into a string
        }
     }
     */
    
    
    
    
    func loadFile() {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            // Here
            if let fileContents = try? String(contentsOf: fileURL) {
                // we loaded file
                fileContents
            }
        }
    }
}

struct LoadingResourcesFromAppBundleView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingResourcesFromAppBundleView()
    }
}
