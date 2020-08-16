//
//  DetailViewController.swift
//  TestTableView
//
//  Created by dreamy on 2020/7/24.
//  Copyright © 2020 dreamy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var ClickOn: UIButton!
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var introLabel: UILabel!
    var viewModel = DetailViewModel()
    
    override func viewDidLoad() {//建立一个class  为各个label链接
        super.viewDidLoad()
        configure()

    }
    private func configure(){
        detailImage.image = UIImage(named:viewModel.getImageName() ?? "Effeil")
        titleLabel.text = viewModel.getTitle()
        stateLabel.text = viewModel.places?.state.name
        locationLabel.text = viewModel.getLocation()
        levelLabel.text = viewModel.getLevel()
        introLabel.text = viewModel.places?.introduction
        
    }

    @IBAction func ClickOn(_ sender: AnyObject) {
        let urlString:String?
        urlString = viewModel.getURLName()
        if let url = URL(string: urlString ?? "") {
            //根据iOS系统版本，分别处理
            if #available(iOS 10, *) {
                UIApplication.shared.open(url, options: [:],
                                          completionHandler: {
                                            (success) in
                })
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
}
