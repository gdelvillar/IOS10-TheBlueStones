//
//  TopSongCell.swift
//  TheBlueStones
//
//  Created by Gabriel Del VIllar on 9/7/16.
//  Copyright © 2016 gdelvillar. All rights reserved.
//

import UIKit

class DiscographyCell: UITableViewCell
{
  @IBOutlet weak var discographyTextView: UITextView!
  
  @IBOutlet weak var albumTitleLbl: UILabel!
  @IBOutlet weak var albumImg: UIImageView!

    override func awakeFromNib()
    {
      super.awakeFromNib()
      self.layoutIfNeeded()
        // Initialization code
    }

  
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

  
  func updateCell(discographyCellInfo: DiscographyCellInfo)
  {
    
    discographyTextView.text = discographyCellInfo.discographyInfo
    discographyTextView.isEditable = false
    albumTitleLbl.text = discographyCellInfo.discographyTitle
    albumImg.image = UIImage(named: discographyCellInfo.imageName)
  }// updateCell()
  
}
