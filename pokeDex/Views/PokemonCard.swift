//
//  PokemonCard.swift
//  pokeDex
//
//  Created by Raveendran on 29/06/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokemonCard: View {
    
    let poke : Pokemon
    
    var body: some View {
        VStack{
            NavigationLink(destination: PokeDetails(poke:poke)){
                EmptyView()
            }
            WebImage(url: poke.variations[0].urlImage)
                        .resizable()
                        .placeholder {
                        Rectangle().foregroundColor(.gray)
                    }
                    .indicator(.activity) // Activity Indicator
                    .transition(.fade(duration: 0.5)) // Fade Transition with duration
                    .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .shadow(radius: 20)
            PokemonTitle(name:poke.name)
        }
        
    }
}

struct PokemonCard_Previews: PreviewProvider {	
    static var previews: some View {
        PokemonCard(poke: Pokemon(num: 1, name: "Pikachu", variations: [], link: ""))
    }
}
