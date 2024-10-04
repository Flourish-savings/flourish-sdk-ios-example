//
//  RewardsView.swift
//  SdkExample
//
//  Created by Yuri Logatto Pamplona on 08/03/24.
//

import SwiftUI
import FlourishSDK

struct RewardsView: View {
    
    var flourishSdkManager: FlourishSdkManager
    
    var body: some View {
        FlourishSdkView(flourishSdkManager: flourishSdkManager).edgesIgnoringSafeArea(.all)
    }
}

#Preview {
   RewardsView()
}
