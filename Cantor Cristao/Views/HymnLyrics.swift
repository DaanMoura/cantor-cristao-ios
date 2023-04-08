//
//  HymnLyrics.swift
//  Cantor Cristao
//
//  Created by Daniel Moura on 07/04/23.
//

import SwiftUI

struct HymnLyrics: View {
    var hymn: Hymn
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(hymn.lyrics)
                    .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.horizontal)
        .navigationTitle(hymn.numberedTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HymnLyrics_Previews: PreviewProvider {
    static var previews: some View {
        HymnLyrics(hymn: ModelData().hymns[0])
    }
}
