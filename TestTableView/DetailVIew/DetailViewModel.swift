//
//  DetailViewModel.swift
//  TestTableView
//
//  Created by dreamy on 2020/7/24.
//  Copyright © 2020 dreamy. All rights reserved.
//

import Foundation

class DetailViewModel{
    var places:Places?
    func getTitle() ->String{//因为已经实例化
        guard let places = places else {
            return ""
        }
        return "\(places.title) "
    }
    
    func getLevel()->String{
        guard let places = places else{
            return ""
        }
        
        return " ☆\(places.level)"
    }
    func getLocation()->String{
        guard let places = places else{
            return ""
        }
        var location:String = ""
        for city in places.location{
            
            location += "\(city.name)|"
        }
        return location
    }
    
    func getImageName()->String?{//？要对称
        return places?.ImageName
    }
    func getURLName()->String?{
        return places?.urlName
    }
}
