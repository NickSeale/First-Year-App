//
//  LibraryViewController.swift
//  First Year App
//
//  Created by Kathryn Ohashi on 2015-03-24.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myLibraryTableView: UITableView!
    var arrayOfLibraries:[Library] = [Library]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpLibraries()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setUpLibraries() {
        var library1 = Library(nameLibrary: "Stauffer Library", locationLibrary: "99 University av", monHoursLibrary: "9:00am-9:00pm", tuesHoursLibrary: "9:00am-9:00pm", wedHoursLibrary: "9:00am-9:00pm", thursHoursLibrary: "9:00am-9:00pm", friHoursLibrary: "9:00am-9:00pm", satHoursLibrary: "9:00am-10:00pm", sunHoursLibrary: "9:00am-10:00pm")
        var library2 = Library(nameLibrary: "Douglas Library", locationLibrary: "20 University av", monHoursLibrary: "9:00am-10:00pm", tuesHoursLibrary: "9:00am-10:00pm", wedHoursLibrary: "9:00am-10:00pm", thursHoursLibrary: "9:00am-10:00pm", friHoursLibrary: "9:00am-10:00pm", satHoursLibrary: "8:00am-10:00pm", sunHoursLibrary: "8:00am-10:00pm")
        
        self.arrayOfLibraries.append(library1)
        self.arrayOfLibraries.append(library2)
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayOfLibraries.count
        
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell:CustomLibraries = tableView.dequeueReusableCellWithIdentifier("Cell") as CustomLibraries
        
        if indexPath.row % 2 == 0
        {
            cell.backgroundColor = UIColor.grayColor()
        }
        else
        {
            cell.backgroundColor = UIColor.whiteColor()
        }
        let library = arrayOfLibraries[indexPath.row]
        
        
        cell.setLibraryCell(library.nameLibrary, libraryLocationText: library.locationLibrary, monLibraryHoursText: library.monHoursLibrary, tuesLibraryHoursText: library.tuesHoursLibrary, wedLibraryHoursText: library.wedHoursLibrary, thursLibraryHoursText: library.thursHoursLibrary, friLibraryHoursText: library.friHoursLibrary, satLibraryHoursText: library.satHoursLibrary, sunLibraryHoursText: library.sunHoursLibrary)
        return cell
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.myLibraryTableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
