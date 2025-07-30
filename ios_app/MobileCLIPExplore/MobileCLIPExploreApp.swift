//
// For licensing see accompanying LICENSE file.
// Copyright (C) 2024 Apple Inc. All Rights Reserved.
//

import SwiftUI
import GooglePlaces // Import the new SDK

@main
struct MobileCLIPExploreApp: App {
    
    init() {
        // Fetch the API key from Info.plist
        guard let apiKey = Bundle.main.object(forInfoDictionaryKey: "GOOGLE_API_KEY") as? String else {
            fatalError("Google API Key not found in Info.plist")
        }
        // Provide the API key to the SDK
        GMSPlacesClient.provideAPIKey(apiKey)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
