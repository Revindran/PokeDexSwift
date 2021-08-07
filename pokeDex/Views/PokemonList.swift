//
//  PokemonList.swift
//  pokeDex
//
//  Created by Raveendran on 30/06/21.
//

import SwiftUI

struct PokemonList: View {
    
    let pokemons:[Pokemon]
    
    var body: some View {
        List{
            ForEach(pokemons){ poke in
                PokemonCard(poke: poke)
            }
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList(pokemons: [])
    }
}
