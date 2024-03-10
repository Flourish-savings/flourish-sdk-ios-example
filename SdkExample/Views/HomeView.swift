//
//  HomeView.swift
//  SdkExample
//
//  Created by Yuri Logatto Pamplona on 08/03/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.green
            
            Image(systemName: "house.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
            
        }
    }
}

#Preview {
    HomeView()
}
