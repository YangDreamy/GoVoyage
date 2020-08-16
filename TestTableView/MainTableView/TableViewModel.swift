//
//  TableViewModel.swift
//  TestTableView
//
//  Created by dreamy on 2020/7/8.
//  Copyright © 2020 dreamy. All rights reserved.
//

import Foundation

class TableViewModel{
    private var array:[Places]
    init(){
        self.array = [ Places(title:"The Palace Museum ",
                               state:Site(name:"Human scene"),
                               location:[Site(name:"Asia"),Site(name:"China"),Site(name:"Beijing")],
                               level:5.0,
                               ImageName: "故宫",
                               introduction: "The Beijing Palace Museum was established on October 10, 1925. It is located in the Forbidden City of the Forbidden City in Beijing. It is the largest museum of ancient culture and art in China.",
                               urlName: "https://www.dpm.org.cn/Home.html"),
                       
                       Places(title:"Eiffel Tower",
                              state:Site(name:"Human scene"),
                              location:[Site(name:"Europe"),Site(name:"French"),Site(name:"Paris")],
                              level:4.6,
                              ImageName: "Eiffiel",
                              introduction: "The Eiffel Tower is named after the engineer (Gustave Eiffel). It started from 1887 to 1889. It is the most visited monument in the world. The tower is 324 meters high and is the largest building in Paris.",
                                                   urlName: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
            
                       Places(title:"Changbai Mountains",
                             state:Site(name:"Natural scenery"),
                             location:[Site(name:"Asia"),Site(name:"China"),Site(name:"JiLin Province")],
                             level:4.8,
                             ImageName: "changbai",
                            introduction: "The Changbai Mountains are a major mountain range in Northeast Asia. The mountains are across the border between China and North Korea ，which  Is a dormant active volcano",
                            urlName:"https://www.ichangbaishan.com"),
        
                        Places(title:"Erhai Lake ",
                        state:Site(name:"Natural scenery"),
                        location:[Site(name:"Asia"),Site(name:"China"),Site(name:"Yunhai")],
                        level:4.5,
                        ImageName: "erhai",
                        introduction: "The Erhai Lake is shaped like a human ear, so it is named Erhai Lake, which ranks seventh among the freshwater lakes in China. It was formed at the end of the Ice Age。Its altitude is 1972 meters.",
                        urlName: "https://en.wikipedia.org/wiki/Erhai_Lake"),
                        
                        Places(title:"Niagara Falls ",
                        state:Site(name:"Natural scenery"),
                        location:[Site(name:"North America"),Site(name:"at the junction of the United States and Canada")],
                        level:4.8,
                        ImageName: "尼亚加拉",
                         introduction: "It is one of the three major transnational waterfalls in the world. The big waterfall is composed of horseshoe-shaped waterfall, American waterfall and Bridal Veil waterfall, with an average flow of 5,720 cubic meters per second. In summer, there will be water fireworks displays twice a week.",
                         urlName: "https://www.niagarafallstourism.com/"),
                        
                       Places(title:"Great Smoky Mountains National Park ",
                       state:Site(name:"Natural scenery"),
                       location:[Site(name:" North America"),Site(name:"United States"),Site(name:"North Carolina/Tennessee")],
                       level:5.0,
                       ImageName: "大雾公园",
                       introduction: "The Great Smoky Mountains National Park covers an area of 200,000 hectares. It has 3,500 species of endemic animals and plants, especially the largest group of salamanders in the world.",
                       urlName: "https://www.nps.gov/grsm/index.htm"),
                        
                        Places(title:"Yellowstone National Park ",
                        state:Site(name:"Natural scenery"),
                        location:[Site(name:"North American"),Site(name:"Located  USA"),Site(name:" Wyoming")],
                        level:4.8,
                        ImageName: "yellowstone",
                        introduction: "The Golden Temple of Amritsar is the largest Sikh temple in India. The construction of the entire Golden Temple cost a total of 750 kg of gold. It is called the jewel of the Sikh crown.",
                        urlName: "https://www.nps.gov/yell/index.htm"),
                        
                        Places(title:"Golden Temple",
                        state:Site(name:"Human scene"),
                        location:[Site(name:"Asia"),Site(name:"India"),Site(name:" Amritsar ")],
                        level:4.6,
                        ImageName: "Temple",
                        introduction: "The Golden Temple of Amritsar is the largest Sikh temple in India. The construction of the entire Golden Temple cost a total of 750 kg of gold. It is called the jewel of the Sikh crown.",
                        urlName: "https://en.wikipedia.org/wiki/Golden_Temple"),
                        
                        Places(title:"Terracotta Army ",
                        state:Site(name:"Human scene"),
                        location:[Site(name:"Asia"),Site(name:"China"),Site(name:"Sian")],
                        level:4.6,
                        ImageName: "兵马俑",
                        introduction: "The Terracotta Army is a collection of terracotta sculptures depicting the armies of Qin Shi Huang, the first Emperor of China. It is a form of funerary art buried with the emperor in 210–209 BCE with the purpose of protecting the emperor in his afterlife.",
                        urlName: "http://www.bmy.com.cn"),
                        Places(title:"Pyramid of Khufu ",
                        state:Site(name:"Human scene"),
                        location:[Site(name:"African"),Site(name:"Egypt"),Site(name:"Giza")],
                        level:4.8,
                        ImageName: "金字塔",
                        introduction: "One of the Seven Wonders of the World is the Pyramid of Pharaoh Khufu from the Fourth Dynasty of Ancient Egypt. It is mainly used as its tomb. It is also the largest and tallest Egyptian-style pyramid in the world.",
                        urlName: "https://en.wikipedia.org/wiki/Egyptian_pyramids"),
                        
                        Places(title:"The GreatWall",
                        state:Site(name:"Human scene"),
                        location:[Site(name:"Asia"),Site(name:"China"),Site(name:"Beijing")],
                        level:4.7,
                        ImageName: "TheGreatWall",
                        introduction: "The Great Wall of China is the longest construction time and the largest amount of engineering in the world, a national military defense project in the era of cold weapons war.",
                        urlName: "https://www.dpm.org.cn/Home.html"),   
                        
                        Places(title:"Versailles Palace",
                        state:Site(name:"Human scene"),
                        location:[Site(name:" Europe "),Site(name:"France"),Site(name:"Paris")],
                        level:5.0,
                        ImageName: "凡尔赛",
                        introduction: "The Palace of Versailles is one of the famous palaces in Paris and one of the five largest palaces in the world. The garden is a French garden and the palace is very luxurious",
                        urlName: "http://www.chateauversailles.fr/"),
                        
                        Places(title:"Great Barrier Reef  ",
                        state:Site(name:"Natural scenery"),
                        location:[Site(name:"Oceania"),Site(name:"Australia")],
                        level:4.6,
                        ImageName: "大堡礁",
                        introduction: "The Great Barrier Reef is the world's largest coral reef system omposed of over 2,900 individual reefs and 900 islands stretching for over 2,300 kilometres (1,400 mi) over an area of approximately 344,400 square kilometres (133,000 sq mi).",
                        urlName: "https://www.australia.com/en/places/cairns-and-surrounds/guide-to-the-great-barrier-reef.html"),
                        
                        Places(title:"Kilimanjaro ",
                        state:Site(name:"Natural scenery"),
                        location:[Site(name:"African "),Site(name:"Located in the Kilimanjaro district in northeast Tanzania")],
                        level:4.7,
                        ImageName: "kiliman",
                        introduction: "Kilimanjaro is known as the roof of Africa. The plain is about 900 meters above sea level. The top of the mountain is covered with snow and ice all year round. The mountain is surrounded by forests. There are many mammals in life, and some of them are endangered species.",
                        urlName: "https://www.tanzaniaodyssey.com/tanzania/kilimanjaro"),
                        
                        Places(title:"Colosseum  ",
                        state:Site(name:"Human scene"),
                        location:[Site(name:"Europe"),Site(name:"Italy"),Site(name:"Roma")],
                        level:4.6,
                        ImageName: "Colosseum",
                        introduction: "The Colosseum or Coliseum, also known as the Flavian Amphitheatre, is an oval amphitheatre in the centre of the city of Rome, Italy.",
                        urlName: "https://www.coopculture.it/en/colosseo-e-shop.cfm"),
                        
                        Places(title:"Parthenon",
                        state:Site(name:"Human scene"),
                        location:[Site(name:"Europe"),Site(name:"Greece"),Site(name:"Athens")],
                        level:4.6,
                        ImageName: "Parthenon",
                        introduction: "The Parthenon is a former temple on the Athenian Acropolis, Greece, dedicated to the goddess Athena, whom the people of Athens considered their patron.",
                        urlName: "https://www.britannica.com/topic/Parthenon"),
                        
                        Places(title:"Leaning Tower of Pisa  ",
                        state:Site(name:"Human scene"),
                        location:[Site(name:"Europe"),Site(name:"Italy"),Site(name:"Roma")],
                        level:4.6,
                        ImageName: "斜塔",
                        introduction: "The Leaning Tower of Pisa or simply the Tower of Pisa is the campanile, or freestanding bell tower, of the cathedral of the Italian city of Pisa, known worldwide for its nearly four-degree lean, the result of an unstable foundation.",
                        urlName: "http://www.towerofpisa.org/"),
                        
                        Places(title:" Wildlife sanctuary—— Masai Mara,",
                                               state:Site(name:"Natural scenery"),
                                               location:[Site(name:" African"),Site(name:"Kenya"),Site(name:"Masai Mara")],
                                               level:5.0,
                                               ImageName: "zoo",
                                               introduction: "It is the most famous wildlife reserve in the world, covering an area of 1,800 square kilometers. This unparalleled animal kingdom is the world's largest home for wild feeding animals, the most concentrated habitat and the most colorful wasteland.",
                                               urlName: "https://www.maasaimarakenyapark.com"),
                        
                     
                        Places(title:" Blue roof church",
                        state:Site(name:"Human scene"),
                        location:[Site(name:" Europe "),Site(name:"Greece"),Site(name:"Santorini")],
                        level:4.6,
                        ImageName: "圣托里尼",
                        introduction: "The blue-roofed church is not large, and it is close to the sea. With white walls and blue roofs, surrounded by blue waters, Santorini's most iconic scenery lies between the blue and white.",
                        urlName: "https://www.msccruises.com/cn-cn/Cruise-Destinations/Mediterranean/Greece/Santorini.aspx"),
                        
                        Places(title:"Chichen Itza  ",
                        state:Site(name:"Human scene"),
                        location:[Site(name:"South America"),Site(name:"Mexico"),Site(name:"Yucatán Peninsula")],
                        level:4.5,
                        ImageName: "Itza",
                        introduction: "Chichen Itza was a major focal point in the Northern Maya Lowlands from the Late Classic (c. AD 600–900) through the Terminal Classic (c. AD 800–900) and into the early portion of the Postclassic period (c. AD 900–1200).",
                        urlName: "https://www.britannica.com/place/Chichen-Itza")
                    
        
         ]
    }
    
    func getNumberofRows()-> Int{
        return array.count
    }
    func titleAt(_ index:Int)-> String{
        return "\(array[index].title)"
    }
    func stateAt(_ index:Int)->String{
        return "\(array[index].state.name)"
    }
    
    func allTetled()->[String]{
        return array.map{$0.title}
    }
    func placeAt(indexPath:IndexPath)->Places{
        return array[indexPath.row]
    }
}

