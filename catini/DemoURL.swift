//
//  File.swift
//  catini
//
//  Created by Lena Lee on 2017. 8. 6..
//  Copyright © 2017년 Lena Lee. All rights reserved.
//

import Foundation

struct DemoURL {
    static let Stanford = "https://comm.stanford.edu//mm/2013/02/mcclatchy-hall.jpg"
    
    static let NASA = [
        
        "Cassini" : "https://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
        "Earth"   : "https://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
        "Saturn"  : "https://www.nasa.gov/sites/default/files/Saturn_collage.jpg"
    ]
    
    static func NASAImageNamed(imageName: String?) -> NSURL?{
        if let urlstring = NASA[imageName ?? ""] {
            return NSURL(string: urlstring)
            
        }else{
        return nil
    }
}
}
