//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Fatih Filizol on 7.06.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tblView: UITableView!
    
    var simpsonsArray = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblView.dataSource = self
        tblView.delegate = self
        
        // Simpson Objects
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "Homer_Simpson")!)
        let bart = Simpson(simpsonName: "Bart Simpson", simpsonJob: "Student", simpsonImage: UIImage(named: "Bart_Simpson")!)
        let edna = Simpson(simpsonName: "Edna Krabappel", simpsonJob: "Teacher", simpsonImage: UIImage(named: "Edna_Krabappel")!)
        let marge = Simpson(simpsonName: "Marge Simpson", simpsonJob: "Power-Plant Technician", simpsonImage: UIImage(named: "MargeSimpson")!)
        let lisa = Simpson(simpsonName: "Lisa Simpson", simpsonJob: "Student", simpsonImage: UIImage(named: "Lisa_Simpson")!)
        let ned = Simpson(simpsonName: "Ned Flanders", simpsonJob: "Pharmacist", simpsonImage: UIImage(named: "Ned_Flanders")!)
        let abe = Simpson(simpsonName: "Abe Simpson II", simpsonJob: "Owner of Simpson Laser Tag", simpsonImage: UIImage(named: "Abraham_Simpson")!)
        let charles = Simpson(simpsonName: "Charles Montgomery Burns", simpsonJob: "World War II Veteran", simpsonImage: UIImage(named: "Montgomery_Burns")!)
        
        
        //Array
        simpsonsArray = [homer, bart, edna, marge, lisa, ned, abe, charles]
        
        
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonsArray[indexPath.row].name
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenSimpson = simpsonsArray[indexPath.row]
        
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }

}

