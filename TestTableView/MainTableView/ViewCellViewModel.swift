//
//  ViewCellViewModel.swift
//  TestTableView
//
//  Created by dreamy on 2020/8/13.
//  Copyright © 2020 dreamy. All rights reserved.
//

import Foundation


class ViewCellViewModel{
    public func getTitle(_ places:Places)->String{
        return "\(places.title)"
    }
    public func getState(_ places:Places)->String{
        return "\(places.state)"
    }
}
