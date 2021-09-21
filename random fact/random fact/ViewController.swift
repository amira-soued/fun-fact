//
//  ViewController.swift
//  random fact
//
//  Created by MacBook Pro on 19/09/2021.
//

import UIKit

class ViewController: UIViewController {
    var result: Result?
    
  
    
    @IBOutlet weak var factText: UITextView!

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        parseJSON()
        
    }

    
    //json
    private func parseJSON() {
        guard let path = Bundle.main.path(forResource: "tableofFacts", ofType: "json") else {
            return
        }
        let url = URL(fileURLWithPath: path)
        
        
        do {
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode(Result.self, from: jsonData)
            
            if let result = result {
             print(result)
            } else {
                print("failed to parse")
            }
            return
        }
        catch {
            print("Error: \(error)")
            
        }
    }
    func changeFact(R: Int) {
        
        factText.text = result?.Facts[R]
    
    }

    @IBAction func generateColor(_ sender: Any) {
        let redValue = CGFloat.random(in: 0...1)
        let greenValue = CGFloat.random(in: 0...1)
        let blueValue = CGFloat.random(in: 0...1)
        
        let randomColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 2.0)
        self.view.backgroundColor = randomColor
        let R = Int.random(in: 0...9)
        
        changeFact( R: R )
    }
    
}

struct Result: Codable{
let Facts: [String]
}
