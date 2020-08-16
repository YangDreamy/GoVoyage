//
//  ViewModel.swift
//  TestTableView
//
//  Created by dreamy on 2020/8/12.
//  Copyright © 2020 dreamy. All rights reserved.
//

import Foundation

class ViewModel{
    private var array:[Places]
    init(){
        self.array = [Places(title:"Eiffe tower",
                             state:Site(name:"Eouope"),
                             location:[Site(name:"French"),Site(name:"Paris")],
                             level:4.5,
                             ImageName: "Eiffe towers",
                            introduction: "shfkajshdfkjahjd"),
        
                      Places(title:"Eiffe tower",
                             state:Site(name:"Eouope"),
                             location:[Site(name:"French"),Site(name:"Paris")],
                             level:4.5,
                             ImageName: "Eiffe towers",
                             introduction: "shfkajshdfkjahjd")]
    }
    
    func getNumberofRows()-> Int{
        return array.count
    }
    func titleAt(_ index:Int)-> String{
        return "\(array[index].title)"
    }
    func stateAt(_ index:Int)->String{
        return "\(array[index].state)"
    }
    
    func allTetled()->[String]{
        return array.map{$0.title}
    }
    func placeAt(indexPath:IndexPath)->Places{
        return array[indexPath.row]
    }
}


