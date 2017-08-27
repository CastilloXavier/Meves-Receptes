//
//  ReviewViewController.swift
//  MevesReceptes
//
//  Created by Xavier Castillo on 27/7/17.
//  Copyright © 2017 Xavier Castillo. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet var ratingStackView: UIStackView!
    @IBOutlet var fondoPantalla: UIImageView!
    
    var raitingSelected : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        fondoPantalla.addSubview(blurEffectView)
        
        let scale = CGAffineTransform(scaleX: 0.0, y: 0.0)
        let transformation = CGAffineTransform(translationX: 0.0, y: 500.0)
        
        ratingStackView.transform = scale.concatenating(transformation) // Combinar escalado con transformacion
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        /*UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
            self.ratingStackView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)*/
        
        UIView.animate(withDuration : 1.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations:{
            self.ratingStackView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func raitingPressed(_ sender: Any) {
        switch (sender as AnyObject).tag {
        case 1:
            raitingSelected = "dislike"
        case 2:
            raitingSelected = "good"
        case 3 :
            raitingSelected = "great"
        default:
            break
        }
        
        performSegue(withIdentifier: "unwinfToDetailView", sender: sender)
    }
    
    

}
