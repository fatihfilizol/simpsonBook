//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Fatih Filizol on 7.06.2022.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var lblJob: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var selectedSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = selectedSimpson?.name
        lblJob.text = selectedSimpson?.job
        imgView.image = selectedSimpson?.image
        
        
    }
    


}
