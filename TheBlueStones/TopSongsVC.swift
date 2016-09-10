//
//  TopSongsVC.swift
//  TheBlueStones
//
//  Created by Gabriel Del VIllar on 9/9/16.
//  Copyright © 2016 gdelvillar. All rights reserved.
//

import UIKit

class TopSongsVC: UIViewController, UITableViewDelegate, UITableViewDataSource
{
  
  
  @IBOutlet weak var tableView: UITableView!
  
  var topSongsCells = [TopSongsCellInfo]()
  
  @IBAction func backBtnPressed(_ sender: AnyObject)
  {
    dismiss(animated: true, completion: nil)
  }// backBtnPressed()
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
    
    if let cell = tableView.dequeueReusableCell(withIdentifier: "TopSongsCell", for: indexPath) as? TopSongsCell
    {
      let topSongsCell = topSongsCells[indexPath.row]
      
      cell.updateCell(topSongsCellInfo: topSongsCell)
      
      return cell
    }
    else
    {
      return UITableViewCell()
    }
  } // tableView(cellForRowAt)

  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  {
    return topSongsCells.count
  }// tableView(numberOfRowsInSection)
  
  
  
    override func viewDidLoad()
    {
      super.viewDidLoad()
      
      let rolling = TopSongsCellInfo(imageName: "howsThatSound", songTitle: "Rolling With The Punches", discographyName: "How's That Sound")
      
      let black = TopSongsCellInfo(imageName: "blackHoles", songTitle: "Black Holes (Solid Ground)", discographyName: "Black Holes")
      
      let lay = TopSongsCellInfo(imageName: "blackHoles", songTitle: "Lay", discographyName: "Black Holes")
      
      let myFire = TopSongsCellInfo(imageName: "blackHoles", songTitle: "Be My Fire", discographyName: "Black Holes")
      
      let makeYour = TopSongsCellInfo(imageName: "howsThatSound", songTitle: "Make Your Move", discographyName: "How's That Sound")
      
      topSongsCells.append(rolling)
      topSongsCells.append(black)
      topSongsCells.append(lay)
      topSongsCells.append(myFire)
      topSongsCells.append(makeYour)
      
      tableView.delegate = self
      tableView.dataSource = self
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
