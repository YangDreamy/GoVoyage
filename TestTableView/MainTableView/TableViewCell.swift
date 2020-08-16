//
//  TableViewCell.swift
//  TestTableView
//
//  Created by dreamy on 2020/7/13.
//  Copyright © 2020 dreamy. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    //@IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var placeImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    var viewModel : TableViewCellViewModel?
    override func awakeFromNib() {
        super.awakeFromNib()
        viewModel = TableViewCellViewModel()
    }
    
    func configure(_ places:Places?){
        guard let places = places else{
            return
        }
        placeImage.image = UIImage(named:viewModel?.getImageName(places) ?? "placeholder")
        titleLabel.text = viewModel?.getTitle(places)
        stateLabel.text = viewModel?.getLevel(places)
        
        
    }
   
    
}
