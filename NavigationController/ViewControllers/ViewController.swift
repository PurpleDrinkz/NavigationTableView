//
//  ViewController.swift
//  NavigationController
//
//  Created by Alumno on 19/09/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let materias : [Materia] = [Materia(nombre: "Programacion de Dispositivos Mòviles"),
                                Materia(nombre: "Tratamiento de Imagen"),
                                Materia(nombre: "Animación por Computadora"),
                                Materia(nombre: "Pensamiento Social Cristiano"),
                                Materia(nombre: "México en el contexto global"),
                                Materia(nombre: "Redes Computacionales"),
                                Materia(nombre: "Mercadotecnia"),
                                Materia(nombre: "Estructura de Datos")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellMateria") as? CeldaMateria
        celda?.lblNombre.text = materias[indexPath.row].nombre
        
        return celda!
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Materias"
        
        materias[0].calificacionPrimerParcial = 10
        materias[2].calificacionPrimerParcial = 9
        materias[3].calificacionPrimerParcial = 7
    }

    @IBOutlet weak var tbMaterias: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetalleMateria"{
            let destino = segue.destination as? DetalleMateriaController
            
            destino?.materia =
            materias[(tbMaterias.indexPathForSelectedRow?.row)!]
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

