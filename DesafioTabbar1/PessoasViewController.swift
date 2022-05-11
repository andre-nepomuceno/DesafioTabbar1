//
//  PessoasViewController.swift
//  DesafioTabbar1
//
//  Created by André N. dos Santos on 09/05/22.
//

import UIKit

class PessoasViewController: UIViewController {

    @IBOutlet weak var pessoasTableView: UITableView!
    
    var pessoas: [Pessoa] = [
        .init(nome: "Fernanda", idade: 41, altura: 1.58, genero: .Feminino),
        .init(nome: "Andre", idade: 40, altura: 1.8, genero: .Masculino),
        .init(nome: "Eduardo", idade: 36, altura: 1.76, genero: .Masculino),
        .init(nome: "Thales", idade: 22, altura: 1.74, genero: .Masculino)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pessoasTableView.delegate = self
        pessoasTableView.dataSource = self

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detalhesVC = segue.destination as? DetalhesPessoaViewController {
            if let pessoaSelecionada = sender as? Pessoa {
                detalhesVC.configuraTela(pessoaSelecionada: pessoaSelecionada)
            }
        }
    }
}

extension PessoasViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pessoaSelecionada = pessoas[indexPath.row]
        performSegue(withIdentifier: "segueDetalhesPessoa", sender: pessoaSelecionada)
    }
}

extension PessoasViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pessoas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let pessoa = pessoas[indexPath.row]
        cell.textLabel?.text = pessoa.nome
        return cell
    }
    
    
}
