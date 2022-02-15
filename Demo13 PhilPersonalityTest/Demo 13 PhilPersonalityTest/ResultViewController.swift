//
//  ResultViewController.swift
//  Demo 13 PhilPersonalityTest
//
//  Created by LukeLin on 2022/2/15.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var persenalityLabal: UILabel!
    @IBOutlet var descriptionTextView: UITextView!
    @IBAction func restartButtonpress (_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        delegate?.resultdismissed()
    }
    
    var testscore: Int = 0
    var delegate: ResultViewControllerProtocol?
    
    override func viewWillAppear(_ animated: Bool) {
        
        if testscore <= 20 {
            
            persenalityLabal.text = Personalities[0].name
            descriptionTextView.text = Personalities[0].description

        } else if testscore > 20 ,testscore < 31 {
            
            persenalityLabal.text = Personalities[1].name
            descriptionTextView.text = Personalities[1].description
            
        } else if testscore > 30 ,testscore < 41 {
            
            persenalityLabal.text = Personalities[2].name
            descriptionTextView.text = Personalities[2].description
            
        } else if testscore > 40 ,testscore < 51 {
            
            persenalityLabal.text = Personalities[3].name
            descriptionTextView.text = Personalities[3].description
            
        } else if testscore > 50 ,testscore < 61 {
            
            persenalityLabal.text = Personalities[4].name
            descriptionTextView.text = Personalities[4].description
            
        } else if testscore > 60 {
            
            persenalityLabal.text = Personalities[5].name
            descriptionTextView.text = Personalities[5].description
            
        }
    }
}
protocol ResultViewControllerProtocol {
    func resultdismissed()
}
