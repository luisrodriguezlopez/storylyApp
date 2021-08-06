//
//  ViewController.swift
//  storylyApp
//
//  Created by IMAC Luis on 05/08/21.
//

import UIKit
import Storyly
class ViewController: UITableViewController {

    let STORYLY_INSTANCE_TOKEN = "tullavemaestra"
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "ViewStorylyCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier:"viewStorylyCell")
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "viewStorylyCell", for: indexPath) as! ViewStorylyCell



        cell.storylyView.storylyInit = StorylyInit(storylyId: STORYLY_INSTANCE_TOKEN)
        
        let storylyViewProgrammatic = StorylyView()
        cell.translatesAutoresizingMaskIntoConstraints = true
        cell.addSubview(storylyViewProgrammatic)
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

}

