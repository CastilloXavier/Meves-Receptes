//
//  SingleViewController.swift
//  MevesReceptes
//
//  Created by Xavier Castillo on 3/7/17.
//  Copyright © 2017 Xavier Castillo. All rights reserved.
//

import UIKit

class SingleViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var receptes : [Recepta] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*self.tableView.dataSource = self
        self.tableView.delegate = self*/
        var recepta = Recepta(nom: "Truita de patates",
                              image: #imageLiteral(resourceName: "truita"),
                              temps: 20,
                              calories: 149,
                              ingredients: ["Patates","Ceba","Ous"],
                              steps: ["Pelar les patates i la ceba",
                                      "Tallar les patates i la ceba i sofregir",
                                      "Batre els ous i posarlos durant 1 minut a la paella amb la resta"])
        receptes.append(recepta)
        
        recepta = Recepta(nom: "Risotto amb bolets i formatge", image : #imageLiteral(resourceName: "risotto"),
                          temps : 40,
                          calories : 247,
                          ingredients : ["180 grams de arrós bomba",
                                         "600-700 ml de caldo de verdures",
                                         "150 grams de xampinyons",
                                         "150 grams de bolets portobello",
                                         "100 grams de ceba",
                                         "75 grams de mantega sense sal",
                                         "50 grams de formatge parmesa",
                                         "100 ml de vi blanc",
                                         "2 talls de all",
                                         "7 cullarades de oli d'ó¡olíva",
                                         "Pebra negra",
                                         "sal"],
                          steps : ["Primer serà prepara el caldo de verdures. El millor és un caldo cassola si tens temps si no caldo envasat.",
                                   "Ara preparem els bolets. Traiem la terra i els tallem a rodelles fines.",
                                   "Ara agafem dos talls d'all i els pelem i piquem. Els posem en una paella amb 5 cullerades d'oliva a foc mitja-baix. Quan sentis olor a all per tota la cuina afegeix els bolets, amb mitja cullerada de sal i una mica de pebre. Fins que els bolets perdin tota l'aigua.",
                                   "Si el caldo no està ben calent posar a escalfar en una olla gran, prova'l per veure com està de sal.",
                                   "Pela la ceba i tallar-la a trossets petits i posi'ls en una casserola i afegeix 50 grams de mantega i dues cullerades d'oli d'oliva. Quan estigui tot calent afegir la ceba durant 15-20 minuts s'ha de posar tova i translúcida",
                                   "Afegiex els dos cassons de arrós a la cassóla i amb una collera remou durant 2 minuts. Després afegeix 100 ml de vi blanc i deixa que s'evapori casi en la seva totalitat. Incorpora els bolets que teniem reservats,",
                                   "Ara afegeix tres cassons de caldo molt calent. Deixa el foc mitj fins que s'evapori casi tot el caldo i remou constantment per que el arrós deixi anar midó(almidón). Afegeix un casson de caldo cada vegada que l'arrós és queda sense líquid. A de quedar molt cremos.",
                                   "Quant l'arrós  estigui en el seu punt afageix el formatge i la mantega restant. Remou be i llest."]
        )
        receptes.append(recepta)
        
        recepta = Recepta(nom: "Pizza 4 formatges",
                          image: #imageLiteral(resourceName: "pizza"),
                          temps : 15,
                          calories : 237,
                          ingredients : ["150 grams de salsa de tomaquet",
                                         "150 grams de mozzarella",
                                         "70 grams de formatge blau",
                                         "70 grams de formatge parmesa",
                                         "70 grams de formatge de cabra",
                                         "masa pizza",
                                         "Orenga"],
                          steps : ["Sobre la masa de la pizza escampem la tomata",
                                   "Ara posem els formatges, tots ben posats i sobre posem l'orenga",
                                   "Posem la pizza al forn d'urant 20 minuts"])
        receptes.append(recepta)
        
        recepta = Recepta(nom: "Pasta amb amanida",
                          image : #imageLiteral(resourceName: "ensalada"),
                          temps : 20,
                          calories : 200,
                          ingredients : ["Encalada",
                                         "Tonyina",
                                         "Ceba",
                                         "nous",
                                         "Ou"],
                          steps : ["En una olla bullim els macarrons durant 15 minuts. Al mateix temps podem bullir un ou",
                                   "Ara preparem la amanida",
                                   "Final unim la pasta l'ou a la amanida. Servit."])
        receptes.append(recepta)
        
        recepta = Recepta(nom: "Guacamole amb Nachos",
                          image : #imageLiteral(resourceName: "guacamole"),
                          temps : 15,
                          calories : 270,
                          ingredients : ["3 albocats",
                                         "1 Ceba",
                                         "1 Tomaquet",
                                         "2 Talls de all",
                                         "2 llimes",
                                         "1 chile o tabasco",
                                         "sal",
                                         "cilantro"],
                          steps : ["Triturem l'interior dels albocats amb una forquilla, se formara una pasta",
                                   "Ara piquem el tomàquet la ceba i el all a petits trocets",
                                   "Ara li agragem el suc de dos llimes i el chile o el tabasco",
                                   "Ara li agragem cilatro i sal al gust, es important remoure bé i provar.",
                                   "Si el guardem és important tapar amb papel film."])
        receptes.append(recepta)
        
        recepta = Recepta(nom: "Solomillo al pebre",
                          image: #imageLiteral(resourceName: "rellom"),
                          temps : 40,
                          calories : 270,
                          ingredients : ["3/4 de Kilo de Solomillo",
                                         "2 Trosos de all",
                                         "Orenga",
                                         "1 Ceba",
                                         "Pebre blanc mòlta",
                                         "Julivert",
                                         "1 Tomaquet madur",
                                         "Oli d'olíva"],
                          steps : ["Hem de pelar i picar molt fi l'all i la ceba. També em de pelar el tomaquet, treure les pepites i tallar a trosos petits.",
                                   "Posa una cassóla amb oli d'olíva i quant estigui calent afegir la ceba i l'all",
                                   "Afegim tomàquet l'orenga sal i pebre",
                                   "Deixa 15 minuts a foc lent.",
                                   "Partir el solomillo  en 4 parts.",
                                   "Posar 3 minuts per cada costat en una parilla si no a paella",
                                   "Quant retirem el solomillo del foc, també posem una safata posan el cim sofregit"])
        receptes.append(recepta)
        
        recepta = Recepta(nom: "Ensalada de tomàquet",
                          image: #imageLiteral(resourceName: "tomaquet"),
                          temps : 15,
                          calories : 79,
                          ingredients : ["2-3 tomàquets",
                                         "1 ceba","1 tall d'all",
                                         "oli d'olíva",
                                         "sal"],
                          steps : ["Neteja i pela els tomàquets",
                                   "tallels i posels en un bol",
                                   "talla la ceba, per la meitat i tallel a juliana fina.",
                                   "Serveix la ensalada de tomàquet."])
        receptes.append(recepta)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // variable sobrescrita que ens permet amagar la capçalera
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

extension SingleViewController: UITableViewDataSource{
    
    //MARK: -UITableViewDataSource
    
    
    //    Seccions que tindra la taula
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //    Quantes files te la Secció
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.receptes.count
    }
    //    Per totes les celes quines s'han de mostrar (només en mostre 14 que son les que caben a la pantalla i quan baixem o pujem s'actualitza peró només en mostré 14)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recepta = receptes[indexPath.row]
        let cellID = "ReceptaCela1"
        
        let cela = self.tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! TotaReceptaCela
        cela.totalImatge.image = recepta.image
        cela.etiquetaNomRecepta.text = recepta.nom
        
        cela.totalImatge.layer.cornerRadius = 42.0
        cela.totalImatge.clipsToBounds = true
        
        return cela
    }

}
