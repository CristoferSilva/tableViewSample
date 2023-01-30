//
//  ViewController.swift
//  CustomTableView
//
//  Created by Cristofer Silva on 29/01/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var table: UITableView!
    var database = seriesOnDatabase
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.backgroundColor = getUIColorFromRGB(red: 115, green: 155, blue: 196)
        table.dataSource = self
        table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return database.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //withIdentifier: "cell" esse no me cell tá definido no storyboard lá no identifier da célula da table.
        //Esse método é chamado todas as vezes que é preciso criar uma célula.
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        let currentSerie =  database[indexPath.row]
        cell.seriesImage.image = UIImage(named: currentSerie.image)
        cell.serieTitle.text = currentSerie.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func getUIColorFromRGB(red: Int, green: Int, blue: Int) -> UIColor {
        return UIColor(cgColor: CGColor(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: CGFloat(1)))
    }
    
    
}
