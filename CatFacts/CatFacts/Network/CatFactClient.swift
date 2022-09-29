//
//  CatFactClient.swift
//  CatFacts
//
//  Created by Adam Zarn on 9/29/22.
//

import Foundation

class CatFactClient: CatFactRetrieving {
    func getNewCatFact() async -> String {
        return "Cats are great"
    }
}
