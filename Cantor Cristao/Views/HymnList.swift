//
//  HymnList.swift
//  Cantor Cristao
//
//  Created by Daniel Moura on 07/04/23.
//

import SwiftUI

struct HymnList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var searchInput: String = ""
    
    var hymns: [Hymn] {
        return searchInput == "" ? modelData.hymns : modelData.hymns.filter { hymn in
            String.lowercased(hymn.numberedTitle)().contains(String.lowercased(searchInput)())
        }
    }
    
    var body: some View {
        NavigationView {
            List(hymns) { hymn in
                NavigationLink {
                    HymnLyrics(hymn: hymn)
                } label: {
                    Text(hymn.numberedTitle)
                }
            }
            .navigationTitle("Cantor Cristão")
        }
        .searchable(
            text: $searchInput,
            placement: .navigationBarDrawer(displayMode: .always)
        )
        .autocorrectionDisabled()
    }
}

struct HymnList_Previews: PreviewProvider {
    static var previews: some View {
        HymnList()
            .environmentObject(ModelData())
    }
}
