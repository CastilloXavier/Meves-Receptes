//
//  DetailViewController.swift
//  MevesReceptes
//
//  Created by Xavier Castillo on 24/7/17.
//  Copyright © 2017 Xavier Castillo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imatgeReceptaVista: UIImageView!
    
    @IBOutlet var tabla: UITableView!
    
    
    @IBOutlet var raitingButton: UIButton!
    
    var recepta : Recepta!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = recepta.nom
        // Do any additional setup after loading the view.
        
        self.imatgeReceptaVista.image = self.recepta.image
        self.tabla.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 1.0, alpha: 0.25)
        
        self.tabla.tableFooterView = UIView(frame: CGRect.zero)
        
        self.tabla.separatorColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        
        self.tabla.estimatedRowHeight = 44.0
        self.tabla.rowHeight = UITableViewAutomaticDimension
        
        let image = UIImage(named: self.recepta.rating)
        self.raitingButton.setImage(image, for: .normal)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    @IBAction func close(segue: UIStoryboardSegue){
        
        if let reviewVC = segue.source as? ReviewViewController {
            
            if let rating = reviewVC.raitingSelected{
                
            self.recepta.rating = rating
            let image = UIImage(named: self.recepta.rating)
            self.raitingButton.setImage(image, for: .normal)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension DetailViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 2
        case 1:
            return self.recepta.ingredients.count
        case 2:
            return self.recepta.steps.count
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReceptaDetallVistaCelaTableViewCell", for: indexPath) as! ReceptaDetallVistaCelaTableViewCell
        cell.backgroundColor = UIColor.clear
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.clauEtiqueta.text = "Nom:"
                cell.valorEtiqueta.text = self.recepta.nom
            case 1:
                cell.clauEtiqueta.text = "Temps:"
                cell.valorEtiqueta.text = "\(self.recepta.temps!) min"
            /*case 2:
                cell.clauEtiqueta.text = "Favorita:"
                cell.valorEtiqueta.text = self.recepta.esFavorita ? "SI" : "NO"
    */
            default:
                break
            }
        case 1:
            if indexPath.row == 0 {
                cell.clauEtiqueta.text = "Ingredients:"
            }else{
                cell.clauEtiqueta.text = ""
            }
            cell.valorEtiqueta.text = self.recepta.ingredients[indexPath.row]
        case 2:
            if indexPath.row == 0 {
                cell.clauEtiqueta.text = "Pasos:"
            }else{
                cell.clauEtiqueta.text = ""
            }

            cell.valorEtiqueta.text = self.recepta.steps[indexPath.row]
            

        default:
            break
        }
                return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title = ""
        
        switch section {
        case 1:
            title = "Ingredients"
        case 2:
            title = "Passos"
        default:
            break
        }
        return title
    }
}
