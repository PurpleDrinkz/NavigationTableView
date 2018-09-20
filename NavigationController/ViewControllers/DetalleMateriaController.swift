//
//  DetalleMateriaController.swift
//  NavigationController
//
//  Created by Alumno on 20/09/18.
//  Copyright © 2018 Benjamin. All rights reserved.
//

import Foundation
import UIKit

class DetalleMateriaController : UIViewController
{
    
    @IBOutlet weak var lblCalificacionPrimerParcial: UILabel!
    
    @IBOutlet weak var lblCalificacionSegundoParcial: UILabel!
    
    @IBOutlet weak var lblCalificacionTercerParcial: UILabel!
    
    @IBOutlet weak var lblCalificacionFinal: UILabel!

    var materia : Materia?
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if let materiaActual = materia
        {
            self.title = materiaActual.nombre
            
            if let primerParcial = materiaActual.calificacionPrimerParcial
            {
                lblCalificacionPrimerParcial.text = "\(primerParcial)"
            }else{
                lblCalificacionPrimerParcial.text = "N/A"
            }
            
            if let segundoParcial = materiaActual.calificacionSegundoParcial
            {
                lblCalificacionSegundoParcial.text = "\(segundoParcial)"
            }else{
                lblCalificacionSegundoParcial.text = "N/A"
            }
            
            if let tercerParcial = materiaActual.calificacionTercerParcial
            {
                lblCalificacionTercerParcial.text = "\(tercerParcial)"
            }else{
                lblCalificacionTercerParcial.text = "N/A"
            }
            
            if let calificacionFinal = materiaActual.calificacionFinal
            {
                lblCalificacionFinal.text = "\(calificacionFinal)"
            }else{
                lblCalificacionFinal.text = "N/A"
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToDetalleMateria" {
            let destino = segue.destination as? DetalleMateriaController
            
            
            
        }
    }
}
