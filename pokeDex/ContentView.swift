//
//  ContentView.swift
//  pokeDex
//
//  Created by Raveendran on 29/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var pokemonVM : PokemonViewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView{
            PokemonList(pokemons: pokemonVM.pokemons)
                .navigationTitle("Pokemons")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
