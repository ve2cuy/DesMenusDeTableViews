//
//  ViewController.swift
//  MenuDeTableViews
//
//  Created by Alain on 17-11-27.
//  Copyright © 2017 Alain. All rights reserved.
//

/*
 The only way to get a static UITableView along with other controls on the same screen is to use a Container View. Follow this way, it works perfectly:
 
 Drag a ViewController onto your storyboard.
 Drag a TableViewController onto your storyboard.
 Next Drag a Container view to your ViewController and size it about the size you want (smaller than the view) -> when you drag the container view it will create a segue and another view. Remove that segue and view.
 Then finally ctrl click in your container and drag to your new TableViewContoller. Select Embed.
 Style your TableView the way you want -> including static cells.
 
 
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

