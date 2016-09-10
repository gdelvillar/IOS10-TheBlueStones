//
//  TopSongsCell.swift
//  TheBlueStones
//
//  Created by Gabriel Del VIllar on 9/9/16.
//  Copyright © 2016 gdelvillar. All rights reserved.
//

import UIKit

class TopSongsCell: UITableViewCell
{

  @IBOutlet weak var albumImg: UIImageView!
  @IBOutlet weak var songName: UILabel!
  @IBOutlet weak var albumName: UILabel!
  
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

  
  func updateCell(topSongsCellInfo: TopSongsCellInfo)
  {
    albumImg.image = UIImage(named: topSongsCellInfo.imageName)
    songName.text = topSongsCellInfo.songTitle
    albumName.text = topSongsCellInfo.discographyName
  
  }// updateCell()
  
}
