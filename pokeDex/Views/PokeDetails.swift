//
//  PokeDetails.swift
//  pokeDex
//
//  Created by Raveendran on 30/06/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokeDetails: View {
    let poke : Pokemon
    var body: some View {
        
        let pokeVar = poke.variations[0]
        
        VStack(spacing:20){
            WebImage(url: pokeVar.urlImage)
                        .resizable()
                .aspectRatio(contentMode: .fit)
                .fixedSize()
            Text(pokeVar.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .shadow(radius: 20)
            Text(pokeVar.description)
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack{
                ForEach(pokeVar.types, id:\.self ){ types in
                    Text(types)
                        .font(.callout)
                        .fontWeight(.light)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.gray.opacity(20.0))
                        .cornerRadius(16)
                }
            }
            
            Link("Visit this pokemon on web",destination: URL(string: poke.link)!)
        }
    }
}

struct PokeDetails_Previews: PreviewProvider {
    static var previews: some View {
        PokeDetails(poke: Pokemon(num: 1, name: "Pokemon", variations: [], link: ""))
    }
}
