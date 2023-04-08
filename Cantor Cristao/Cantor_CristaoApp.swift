//
//  Cantor_CristaoApp.swift
//  Cantor Cristao
//
//  Created by Daniel Moura on 07/04/23.
//

import SwiftUI

@main
struct CantorCristaoApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
