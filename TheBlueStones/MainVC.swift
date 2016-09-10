//
//  ViewController.swift
//  TheBlueStones
//
//  Created by Gabriel Del VIllar on 9/7/16.
//  Copyright © 2016 gdelvillar. All rights reserved.
//

import UIKit

class MainVC: UIViewController
{

  @IBOutlet weak var discographyBtn: UIButton!
  @IBOutlet weak var eventsBtn: UIButton!
  @IBOutlet weak var tableView: UITableView!
  
  @IBAction func discographyBtnPressed(_ sender: AnyObject)
  {
    let storyBoard = UIStoryboard(name: "DiscographyVC", bundle: nil)
    let discographyView = storyBoard.instantiateViewController(withIdentifier: "discographyVC")
    present(discographyView, animated: true, completion: nil)
  }// albumsBtnPressed()
  
  
  @IBAction func topSongsBtnPressed(_ sender: AnyObject)
  {
    let storyBoard = UIStoryboard(name: "TopSongsVC", bundle: nil)
    let topSongsView = storyBoard.instantiateViewController(withIdentifier: "topSongsVC")
    present(topSongsView, animated: true, completion: nil)
    
  }

  
  @IBAction func eventsBtnPressed(_ sender: AnyObject)
  {
    let storyBoard = UIStoryboard(name: "EventsVC", bundle:nil)
    let eventsView = storyBoard.instantiateViewController(withIdentifier: "eventsVC")
    present(eventsView, animated: true, completion: nil)
  } //eventsBtnPressed()
  
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
  }

 

}

