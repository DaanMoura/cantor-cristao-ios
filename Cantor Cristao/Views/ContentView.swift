//
//  ContentView.swift
//  Cantor Cristao
//
//  Created by Daniel Moura on 07/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HymnList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
