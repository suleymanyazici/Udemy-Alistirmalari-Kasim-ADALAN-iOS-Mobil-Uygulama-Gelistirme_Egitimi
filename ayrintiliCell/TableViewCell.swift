//
//  TableViewCell.swift
//  ayrintiliCell
//
//  Created by Suleyman YAZICI on 2.08.2023.
//

import UIKit

protocol HucreButtonProtocol{
    
    func hucreIciButonaTiklandi(indexPath : IndexPath)
}


class TableViewCell: UITableViewCell {

    var hucreProtocol : HucreButtonProtocol?
    var indexPath : IndexPath?
    
    @IBOutlet weak var kisiAdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func butonTiklandi(_ sender: Any) {
        
        hucreProtocol?.hucreIciButonaTiklandi(indexPath: indexPath!)

    }
    
}
