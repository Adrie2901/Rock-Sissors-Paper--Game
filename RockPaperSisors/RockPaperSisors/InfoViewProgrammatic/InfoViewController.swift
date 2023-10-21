//
//  InfoViewController.swift
//  RockPaperSisors
//
//  Created by Diplomado  on 19/10/23.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        // Crea la vista de información
               let informationView = UIView()
               informationView.translatesAutoresizingMaskIntoConstraints = false
               view.addSubview(informationView)
               
               // Configura las restricciones para que la vista ocupe toda la pantalla
               NSLayoutConstraint.activate([
                   informationView.topAnchor.constraint(equalTo: view.topAnchor),
                   informationView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                   informationView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                   informationView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
               ])
               
               // Título remarcado
               let titleLabel = UILabel()
               titleLabel.translatesAutoresizingMaskIntoConstraints = false
               titleLabel.text = "Reglas del juego 🪨📄✂️"
               titleLabel.font = UIFont.boldSystemFont(ofSize: 26)
               informationView.addSubview(titleLabel)
               
               // Configura las restricciones para el título
               NSLayoutConstraint.activate([
                   titleLabel.topAnchor.constraint(equalTo: informationView.topAnchor, constant: 20),
                   titleLabel.leadingAnchor.constraint(equalTo: informationView.leadingAnchor, constant: 20),
                   titleLabel.trailingAnchor.constraint(equalTo: informationView.trailingAnchor, constant: -20)
               ])
               
               // Texto justificado
               let contentLabel = UILabel()
               contentLabel.translatesAutoresizingMaskIntoConstraints = false
               contentLabel.text = """
        Piedra vence Tijera.
        Tijera vence Papel.
        Papel vence Piedra.
        """
      
               contentLabel.textAlignment = .justified
               contentLabel.numberOfLines = 0
               informationView.addSubview(contentLabel)
               
               // Configura las restricciones para el texto justificado
               NSLayoutConstraint.activate([
                   contentLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
                   contentLabel.leadingAnchor.constraint(equalTo: informationView.leadingAnchor, constant: 30),
                   contentLabel.trailingAnchor.constraint(equalTo: informationView.trailingAnchor, constant: -30)
               ])
        
        // Título remarcado
        let subtitleLabel = UILabel()
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.text = "Modo por rondas"
        subtitleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        informationView.addSubview(subtitleLabel)
        
        // Configura las restricciones para el título
        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalTo: contentLabel.topAnchor, constant: 75),
            subtitleLabel.leadingAnchor.constraint(equalTo: informationView.leadingAnchor, constant: 30),
            subtitleLabel.trailingAnchor.constraint(equalTo: informationView.trailingAnchor, constant: -20)
        ])
        
        // Texto justificado
        let contentLabelRondas = UILabel()
        contentLabelRondas.translatesAutoresizingMaskIntoConstraints = false
        contentLabelRondas.text = """
 - Con el slider selecciona el  numero de rondas a jugar.
 - Los jugadores eligen una opción en cada ronda.
 - El jugador con más rondas ganadas es el ganador final.
 """

        contentLabelRondas.textAlignment = .left
        contentLabelRondas.numberOfLines = 0
        informationView.addSubview(contentLabelRondas)
        
        // Configura las restricciones para el texto justificado
        NSLayoutConstraint.activate([
            contentLabelRondas.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 15),
            contentLabelRondas.leadingAnchor.constraint(equalTo: informationView.leadingAnchor, constant: 30),
            contentLabelRondas.trailingAnchor.constraint(equalTo: informationView.trailingAnchor, constant: -30)
        ])
               
        let subtitleLabel2 = UILabel()
        subtitleLabel2.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel2.text = "Modo por puntos"
        subtitleLabel2.font = UIFont.boldSystemFont(ofSize: 18)
        informationView.addSubview(subtitleLabel2)
        
        // Configura las restricciones para el título
        NSLayoutConstraint.activate([
            subtitleLabel2.topAnchor.constraint(equalTo: contentLabelRondas.topAnchor, constant: 140),
            subtitleLabel2.leadingAnchor.constraint(equalTo: informationView.leadingAnchor, constant: 30),
            subtitleLabel2.trailingAnchor.constraint(equalTo: informationView.trailingAnchor, constant: -20)
        ])
        
        let contentLabelPuntos = UILabel()
        contentLabelPuntos.translatesAutoresizingMaskIntoConstraints = false
        contentLabelPuntos.text = """
 - Cada ronda tiene puntos:
 El jugador decide cuantos puntos por ganar.
 El jugador decide cuantos puntos por empatar.
 El jugador decide cuantos puntos por perder.
 
 - Al final del juego, el jugador con más puntos es el ganador.
 """

        contentLabelPuntos.textAlignment = .left
        contentLabelPuntos.numberOfLines = 0
        informationView.addSubview(contentLabelPuntos)
        
        // Configura las restricciones para el texto justificado
        NSLayoutConstraint.activate([
            contentLabelPuntos.topAnchor.constraint(equalTo: subtitleLabel2.bottomAnchor, constant: 15),
            contentLabelPuntos.leadingAnchor.constraint(equalTo: informationView.leadingAnchor, constant: 30),
            contentLabelPuntos.trailingAnchor.constraint(equalTo: informationView.trailingAnchor, constant: -30)
        ])
        
        
      
               // Autor (más pequeño)
               let authorLabel = UILabel()
               authorLabel.textAlignment = .left
               authorLabel.translatesAutoresizingMaskIntoConstraints = false
               authorLabel.text = "Author: Adriana Ruiz"
               authorLabel.font = UIFont.systemFont(ofSize: 14)
               informationView.addSubview(authorLabel)
               
               // Configura las restricciones para el autor
               NSLayoutConstraint.activate([
                authorLabel.topAnchor.constraint(equalTo: contentLabelPuntos.bottomAnchor, constant: 95),
                   authorLabel.leadingAnchor.constraint(equalTo: informationView.leadingAnchor, constant: 20),
                   authorLabel.trailingAnchor.constraint(equalTo: informationView.trailingAnchor, constant: -20)
               ])
           }
       

    }
    

