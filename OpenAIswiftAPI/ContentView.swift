//
//  ContentView.swift
//  OpenAIswiftAPI
//
//  Created by giovanni russo on 18/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var network: Network
    
    var initResponse: TranslationResponse = TranslationResponse(id: "id", object: "object", created: 1, model: "model", choices: [TranslationResponse.TextCompletionChoice(text: "text", index: 0, finish_reason: "finish")])
    
    var body: some View {
        VStack {
            
            Text("Response: "+network.response.resultText)
                .onAppear(){
                    network.getResponse()
                }
        }
        .padding()
    }
}


