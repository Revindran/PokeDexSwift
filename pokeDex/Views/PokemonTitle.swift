//
//  PokemonTitle.swift
//  pokeDex
//
//  Created by Raveendran on 30/06/21.
//

import SwiftUI

struct PokemonTitle: View {
    
    let name : String
    
    var body: some View {
        Text(name)
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .shadow(radius: 20)
            .padding().brightness(0.4)
    }
}

struct PokemonTitle_Previews: PreviewProvider {
    static var previews: some View {
        PokemonTitle(name: "name")
    }
}
