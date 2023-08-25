//
//  ContentView.swift
//  RecommendedActivities
//
//  Created by Keona Balaoro on 9/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var weather = ""
    @State private var activity = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Enter Current Temperature: ")
                TextField("Current Temperature", text: $weather)
                    .padding()
            }.padding()
            Button("Recommend Activity"){
                let Weather = Double(weather)
                if Weather! >= 80.0 {
                    activity = "Go swimming"
                } else if Weather! >= 60.0 {
                    activity =  "Play tennis"
                } else if Weather! >= 40.0 {
                    activity = "Go on a run"
                } else {
                    activity = "Go skiing"
                    }
            }.buttonStyle(.borderedProminent)
            
            Text(activity)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
