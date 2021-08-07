//
//  Pokemon.swift
//  pokeDex
//
//  Created by Raveendran on 30/06/21.
//

import Foundation


struct Pokemon : Codable , Identifiable {
    
    var id:UUID{
        get{
            UUID()
        }
    }
    
    let num: Int
    let name: String
    let variations: [PokeVariation]
    let link:String
}

struct PokeVariation:Codable {
    let name,description,image : String
    let types : [String]
    var urlImage:URL{
    get{
    URL(string: "\(baseUrl)/master/public/\(image)")!
    }
    }
}
