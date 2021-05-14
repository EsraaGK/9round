//
//  ClubsTableViewCell.swift
//  9round
//
//  Created by EsraaGK on 14/05/2021.
//

import UIKit

class ClubsTableViewCell: UITableViewCell {

    @IBOutlet private weak var name: UILabel!
    @IBOutlet private weak var phone: UILabel!
    @IBOutlet private weak var location: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configure(with club: Club) {
        name.text = club.name
        phone.text = club.phone
        location.text = club.locationName
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
