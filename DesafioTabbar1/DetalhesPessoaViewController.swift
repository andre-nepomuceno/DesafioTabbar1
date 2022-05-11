//
//  DetalhesPessoaViewController.swift
//  DesafioTabbar1
//
//  Created by André N. dos Santos on 09/05/22.
//

import UIKit

class DetalhesPessoaViewController: UIViewController {

    var pessoa: Pessoa?
    
    @IBOutlet weak var fotoDetalhesImageView: UIImageView!
    @IBOutlet weak var alturaDetalhesLabel: UILabel!
    @IBOutlet weak var idadeDetalhesLabel: UILabel!
    @IBOutlet weak var nomeDetalhesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundColor()
        setValues()
    }
    
    func configuraTela(pessoaSelecionada: Pessoa){
        pessoa = pessoaSelecionada
    }
    
    private func setBackgroundColor() {
        let colorTop = UIColor.white.cgColor
        let colorBottom = pessoa?.genero == .Masculino ? UIColor(red: .zero, green: 0.418, blue: 0.941, alpha: 1.0).cgColor : UIColor(red: 0.941, green: 0.118, blue: 0.141, alpha: 0.9).cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [colorTop, colorBottom]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    private func setValues() {
        guard let pessoa = pessoa else { return }
        nomeDetalhesLabel.text = pessoa.nome
        alturaDetalhesLabel.text = "Altura: \(pessoa.altura) metros"
        idadeDetalhesLabel.text = "Idade: \(pessoa.idade) anos"
        fotoDetalhesImageView.image = pessoa.imagem
        fotoDetalhesImageView.layer.borderColor = UIColor.darkGray.cgColor
        fotoDetalhesImageView.layer.borderWidth = 1
    }
}
