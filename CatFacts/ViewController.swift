//
//  ViewController.swift
//  CatFacts
//
//  Created by Adam Zarn on 9/29/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var catFactLabel: UILabel!
    @IBOutlet weak var getNewCatFactButton: UIButton!
    
    @objc dynamic var viewModel: ViewModel = ViewModel()
    var observations: [NSKeyValueObservation] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        catFactLabel.text = viewModel.catFactLabelText
        getNewCatFactButton.setTitle(viewModel.getNewCatFactButtonTitle, for: .normal)
        startObservingViewModel()
    }
    
    func startObservingViewModel() {
        observations = [
            observe(\.viewModel.catFactLabelText) { [unowned self] (_, _) in
                self.catFactLabel.text = self.viewModel.catFactLabelText
            }
        ]
    }

    @IBAction func didPressGetNewCatFactButton(_ sender: Any) {
        viewModel.getNewCatFact()
    }
}
