//
//  OpenAIswiftAPIApp.swift
//  OpenAIswiftAPI
//
//  Created by giovanni russo on 18/02/23.
//

import SwiftUI

@main
struct OpenAIswiftAPIApp: App {
    var initResponse: TranslationResponse = TranslationResponse(id: "id", object: "object", created: 1, model: "model", choices: [TranslationResponse.TextCompletionChoice(text: "text", index: 0, finish_reason: "finish")])
    var body: some Scene {
        WindowGroup {
            ContentView(network: Network(response: initResponse))
        }
    }
}
