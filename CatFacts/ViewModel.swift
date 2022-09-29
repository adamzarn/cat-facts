//
//  ViewModel.swift
//  CatFacts
//
//  Created by Adam Zarn on 9/29/22.
//

import Foundation

@objc class ViewModel: NSObject {
    let catFactClient: CatFactRetrieving
    @objc dynamic var catFactLabelText: String = ""
    var getNewCatFactButtonTitle: String = "Get New Cat Fact"
    
    init(catFactClient: CatFactRetrieving = CatFactClient()) {
        self.catFactClient = catFactClient
    }
    
    @MainActor
    func getNewCatFact() {
        Task {
            catFactLabelText = await catFactClient.getNewCatFact()
        }
    }
}
