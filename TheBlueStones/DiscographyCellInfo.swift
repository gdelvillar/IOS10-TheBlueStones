//
//  CellContents.swift
//  TheBlueStones
//
//  Created by Gabriel Del VIllar on 9/8/16.
//  Copyright © 2016 gdelvillar. All rights reserved.
//

import Foundation

class DiscographyCellInfo
{
  private var _imageName: String!
  private var _discographyTitle: String!
  private var _discographyInfo: String!
  private var _numberOfSongs: Int!
  
  
  init(imageName:String, discographyTitle:String, numberOfSongs: Int, discographyInfo: String)
  {
    _imageName = imageName
    _discographyTitle = discographyTitle
    _numberOfSongs = numberOfSongs
    _discographyInfo = discographyInfo
  
  
  } //class consructor
  
  
  var imageName : String
  {
    return _imageName
  }
  
  
  var discographyTitle: String
  {
    return _discographyTitle
  }
  
  
  var numberOfSongs: Int
  {
    return _numberOfSongs
  }
  
  
  var discographyInfo: String
  {
    return _discographyInfo
  }

}// DiscographyCellInfo Class
