//
//  SdkExampleApp.swift
//  SdkExample
//
//  Created by Yuri Logatto Pamplona on 10/03/24.
//

import SwiftUI
import FlourishSDK

@main
struct SdkExampleApp: App {
    @StateObject private var flourishSdkManager = FlourishSdkManager(
        customerCode: "123",
        partnerUuid: "partnerUuid",
        partnerSecret: "partnerSecret",
        environment: Environment.staging,
        language: Language.pt
    )
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(flourishSdkManager)
        }
    }
}
