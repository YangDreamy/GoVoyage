//
//  TableViewController.swift
//  TestTableView
//
//  Created by dreamy on 2020/7/8.
//  Copyright © 2020 dreamy. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    //!optinal view cannot be null
    @IBOutlet weak var tableView :UITableView!
    var viewModel:TableViewModel?//? can be null
    var selectedPlaces:Places?
//    let cellSpacingHeight: CGFloat = 8
    override func viewDidLoad() {//每一个　tableview都有一个datasource and delegate 两个属性，和两个方法
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        viewModel = TableViewModel()
        title = "GoVoyage"
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue:UIStoryboardSegue, sender:Any?){
        guard let detailViewController = segue.destination as?
            DetailViewController else{
                return
        }
        detailViewController.viewModel.places = selectedPlaces
    }
}

extension TableViewController:UITableViewDataSource{ // datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else{
            return 0
        }
        //tableView.backgroundColor = UIColor.lightGray
        return viewModel.getNumberofRows()
    }
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//          return cellSpacingHeight
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "placescell") as? TableViewCell else {
            return UITableViewCell()
        }
        //cell.textLabel?.text = viewModel?.element(indexPath.row)//viewmodel connect the view viewmodel data form model to view
        let places = viewModel?.placeAt(indexPath: indexPath)
        cell.configure(places)
        
        //cell.backgroundColor = UIColor.white

        // add a border
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 5
        cell.layer.cornerRadius = 12
        //cell.backgroundColor = UIColor.white
        
        return cell
        
        
    }
    
}
//tableview cell three labels
//extension TableViewController: UITableViewDelegate{
    //func table(_ tabelView: UITableView, heightForTowAt indexPath: IndexPath)-> CGFloat {
       //return 110
    //}

//}
extension TableViewController:UITableViewDelegate{
    
    internal func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //界面转换
        //selectedFilm = viewModel?.filmAt(indexPath: indexPath)
        selectedPlaces = viewModel?.placeAt(indexPath: indexPath)
        performSegue(withIdentifier:"detailSegue", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension //高度自适应
    }
//link
    
    
}
