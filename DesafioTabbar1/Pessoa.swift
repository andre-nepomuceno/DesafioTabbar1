//
//  Pessoa.swift
//  DesafioTabbar1
//
//  Created by André N. dos Santos on 09/05/22.
//

import Foundation
import UIKit

public enum Genero {
    case Feminino
    case Masculino
}

class Pessoa {
    let nome: String
    var idade: Int
    var altura: Double
    let genero: Genero
    var imagem: UIImage?
    
    init(nome: String, idade: Int, altura: Double, genero: Genero) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
        self.genero = genero
        definirImagem()
    }
    
    private func definirImagem() {
        var nomeImagem = ""
        switch genero {
        case .Feminino:
            nomeImagem = "mulherProgramadora"
        case .Masculino:
            nomeImagem = "homemProgramador"
        }
        self.imagem = UIImage(named: nomeImagem)
    }
    
}
