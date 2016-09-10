//
//  TopSongsCellInfo.swift
//  TheBlueStones
//
//  Created by Gabriel Del VIllar on 9/9/16.
//  Copyright © 2016 gdelvillar. All rights reserved.
//

import Foundation

class TopSongsCellInfo
{
  private var _imageName: String!
  private var _songTitle: String!
  private var _discographyName: String!
  
  init(imageName:String, songTitle:String, discographyName:String)
  {
    _imageName = imageName
    _songTitle = songTitle
    _discographyName = discographyName
  
  }// class constructor
  
  
  var imageName: String
  {
    return _imageName
  }
  
  
  var songTitle: String
  {
    return _songTitle
  }
  
  
  var discographyName: String
  {
    return _discographyName
  }

}// TopSongsCellInfo class
