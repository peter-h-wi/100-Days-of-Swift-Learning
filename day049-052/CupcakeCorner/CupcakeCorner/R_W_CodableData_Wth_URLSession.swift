//
//  R_W_CodableData_Wth_URLSession.swift
//  CupcakeCorner
//
//  Created by peter wi on 2/15/22.
//

import SwiftUI

struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}


struct R_W_CodableData_Wth_URLSession: View {
    @State private var results = [Result]()
    
    var body: some View {
        List(results, id: \.trackId) { item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
            }
        }
        /*
         Don't use "onAppear()" here because, it expects its function to be synchronous.
         Instead, use "task(), it can call functions that might go to sleep for a while
         */
        .task {
            /*
             await: acknowledges that a sleep might happen
             --> similar to try: acknowledges that an error might be thrown.
             */
            await loadData()
        }
    }
    
    /*
     async: tell Swift this function might want to go to sleep in order to complete its work
     */
    func loadData() async {
        /*
         1. Create the URL we want to read
         */
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URL")
            return
        }
        
        
        do {
            /*
             2. Fetch the data for that URL
             - a. data(from: ): takes a URL and returns the Data object at that URL.
                - URLSession class: you can create and configure by hand, but you can use a shared instancethat comes with sensible defaults
             - b. value type of tuple: it contains data at the URL and some metadata describing how the request went.
                - We don't use metadata, hence the underscore - we create a new local constant for the data, and toss the metadata away.
             - c. use "try await" not "await try".
             */
            let (data, _) = try await URLSession.shared.data(from: url)
            
            /*
             3. Decde the result of that data into a Response struct
             - JSONDecoder to convert the list of all the songs by Taylor Swift into an array of Result instances
             */
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                results = decodedResponse.results
            }
        } catch {
            print("Invalid data")
        }
    }
}

struct R_W_CodableData_Wth_URLSession_Previews: PreviewProvider {
    static var previews: some View {
        R_W_CodableData_Wth_URLSession()
    }
}
