//
//  MyCryptoApp.swift
//  MyCrypto
//
//  Created by James Allen on 22/12/2024.
//

import SwiftUI

@main
struct MyCryptoApp: App {
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarBackButtonHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
