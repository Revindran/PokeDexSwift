//
//  PoekmonViewModel.swift
//  pokeDex
//
//  Created by Raveendran on 30/06/21.
//

import Foundation


class PokemonViewModel: ObservableObject {
    @Published var pokemons:[Pokemon]=[]
     
    init() {
        self.fetchPokemons()
    }
    
    func fetchPokemons()  {
        ApiService().fetchPokemons {pokemons in
            self.pokemons = pokemons
        }
    }
}
