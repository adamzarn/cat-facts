//
//  CatFactRetrieving.swift
//  CatFacts
//
//  Created by Adam Zarn on 9/29/22.
//

import Foundation

protocol CatFactRetrieving {
    func getNewCatFact() async -> String
}
