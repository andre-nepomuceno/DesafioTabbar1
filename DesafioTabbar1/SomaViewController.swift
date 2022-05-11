//
//  ViewController.swift
//  DesafioTabbar1
//
//  Created by André N. dos Santos on 09/05/22.
//

import UIKit

class SomaViewController: UIViewController {
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBOutlet weak var valor2Textfield: UITextField!
    @IBOutlet weak var valor1Textfield: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SomaAction(_ sender: Any) {
        guard let valor1 = valor1Textfield.text else { return }
        guard let valor2 = valor2Textfield.text else { return }
        let valor1Int = Int(valor1) ?? 0
        let valor2Int = Int(valor2) ?? 0
        resultadoLabel.text = String(valor1Int + valor2Int)
    }
    
}

