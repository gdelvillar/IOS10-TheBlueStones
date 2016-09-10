//
//  AlbumsVC.swift
//  TheBlueStones
//
//  Created by Gabriel Del VIllar on 9/7/16.
//  Copyright © 2016 gdelvillar. All rights reserved.
//

import UIKit

class DiscographyVC: UIViewController, UITableViewDelegate, UITableViewDataSource
{
  @IBOutlet weak var tableView: UITableView!
  
  var discographyCellInfo = [DiscographyCellInfo]()
  
  @IBAction func backButtonPressed(_ sender: AnyObject)
  {
    dismiss(animated: true, completion: nil)
  } //backButtonPressed()
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
   
    if let cell = tableView.dequeueReusableCell(withIdentifier: "DiscographyCell", for: indexPath) as? DiscographyCell
    {
      let discographyCell = discographyCellInfo[indexPath.row]
      
      cell.updateCell(discographyCellInfo: discographyCell)
      
     
      return cell
    }
    else
    {
      return UITableViewCell()
    }
  } // tableView(cellForRowAt)
  
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
  {
    switch discographyCellInfo[indexPath.row].numberOfSongs
    {
      case 1:
        return 106
      case 6:
        return 235
      case 7:
        return 240
      case 9:
        return 280
    case 10:
        return 300
      default:
        return 290
    }
    
  }
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  {
    return discographyCellInfo.count
  }// tableView(numberOfRowsInSection)
  

  override func viewDidLoad()
  {
    super.viewDidLoad()
    
    let specialEditionAlbum = DiscographyCellInfo(imageName: "specialEdition", discographyTitle: "The Blue Stones Special Edition:\nLive Off The Floor", numberOfSongs: 9, discographyInfo: "1. I'm a Stereo\n2. Frozen Heart(ft. Mike Chabot)\n3. Saw Mill\n4.Tire Tracks(ft. Mike Chabot)\n5. All I Ever\n6. Shiny Diamonds (ft. Mike Chabot)\n7. Treat Me Right (ft. Mike Chabot)\n8. Star Killer\n9. Heat")
    
    let blueStonesEPCell = DiscographyCellInfo(imageName: "BlueTie", discographyTitle: "The Blue Stones EP", numberOfSongs: 6, discographyInfo: "1. I'm a Stereo\n2. Vain Vixens\n3. Tire Tracks\n4. What She Don't Know (Won't\n    Hurt Her)\n5. Star Killer\n6. More To Life")
    
    let sawMill = DiscographyCellInfo(imageName: "blueSawMill", discographyTitle: "Saw Mill", numberOfSongs: 1, discographyInfo: "1. Saw Mill")
    
    let thatSound = DiscographyCellInfo(imageName: "howsThatSound", discographyTitle: "How's That Sound", numberOfSongs: 7, discographyInfo: "1. Rolling With The Punches\n2. Criminals\n3. All I Ever\n4. Make Your Move\n5. Eats You Up\n6. Soul's Full\n7. Patience")
    
    let blackHolesAlbum = DiscographyCellInfo(imageName: "blackHoles", discographyTitle: "Black Holes", numberOfSongs: 10, discographyInfo: "1. Airlock\n2. The Drop\n3. Black Holes (Solid Ground)\n4. The Hard Part\n5. Be My Fire\n6. Lay\n7. Little Brother\n8. Midnight\n9. Orbit\n10. Magic")
    
    discographyCellInfo.append(specialEditionAlbum)
    discographyCellInfo.append(blueStonesEPCell)
    discographyCellInfo.append(sawMill)
    discographyCellInfo.append(thatSound)
    discographyCellInfo.append(blackHolesAlbum)
    
    tableView.delegate = self
    tableView.dataSource = self

  }// viewDidLoad()

   

  
}
