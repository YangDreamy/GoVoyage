//
//  TableViewCellViewModel.swift
//  TestTableView
//
//  Created by dreamy on 2020/7/13.
//  Copyright © 2020 dreamy. All rights reserved.
//

import Foundation
class TableViewCellViewModel{
    /*public func getTitle(_ film: Film) ->String{
        return "\(film.title) (\(film.year))"
    }
    func getRating(_ film: Film) -> String{
        return "\(film.rating)%"
    }
    func getCasting(_ film:Film)-> String{
        var cast:String = ""
        for actor in film.cast{
            cast += "\(actor.name),"
        }
        return cast
    }*/
    public func getTitle(_ places: Places)->String{
        return "\(places.title)"
    }
    public func getState(_ places:Places)->String{
        return "\(places.state.name)"
    }
    func getImageName(_ places:Places)->String{//？要对称
        return "\(places.ImageName)"
      }
    func getLevel(_ places:Places)->String{
        return "Recommended ☆ \(places.level)"
    }
}
