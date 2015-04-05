//
//  LibraryViewController.swift
//  First Year App
//
//  Created by Nicholas Seale on 2015-03-24.
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
        var library1 = Library(nameLibrary: "Joseph S. Stauffer Library", locationLibrary: "101 Union Street", monHoursLibrary: "8:00am-2:00am", friHoursLibrary: "8:00am-2:00am", satHoursLibrary: "10:00am-2:00am", sunHoursLibrary: "10:00am-2:00am")
        var library2 = Library(nameLibrary: "Douglas Library", locationLibrary: "93 University Avenue", monHoursLibrary: "8:30am-9:00pm", friHoursLibrary: "8:30am-9:00pm", satHoursLibrary: "10:00am-9:00pm", sunHoursLibrary: "10:00am-9:00pm")
        var library3 = Library(nameLibrary: "Bracken Health Sciences Library", locationLibrary: "Botterall Hall", monHoursLibrary: "8:30am-11:00pm", friHoursLibrary: "8:30am-8:00pm", satHoursLibrary: "10:00am-5:00pm", sunHoursLibrary: "10:00am-8:00pm ")
        var library4 = Library(nameLibrary: "Education Library", locationLibrary: "93 University Avenue", monHoursLibrary: "8:15am-9:00pm", friHoursLibrary: "8:15am-5:00pm", satHoursLibrary: "12:30pm-5:00pm", sunHoursLibrary: "12:30pm-5:00pm")
        var library5 = Library(nameLibrary: "Lederman Law Library", locationLibrary: "128 Union Street", monHoursLibrary: "8:30am-11:00pm", friHoursLibrary: "8:30am-4:30pm", satHoursLibrary: "9:00am-7:00pm", sunHoursLibrary: "10:00am-11:00pm")
        var library6 = Library(nameLibrary: "Atheltics and Recreation Centre (ARC)", locationLibrary: "284 Earl Street", monHoursLibrary: "6:00am-12:30am", friHoursLibrary: "6:00am-10:30pm", satHoursLibrary: "8:00am-10:30am", sunHoursLibrary: "9:00am-12:30am")
        
        self.arrayOfLibraries.append(library1)
        self.arrayOfLibraries.append(library2)
        self.arrayOfLibraries.append(library3)
        self.arrayOfLibraries.append(library4)
        self.arrayOfLibraries.append(library5)
        self.arrayOfLibraries.append(library6)
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
        
        cell.setLibraryCell(library.nameLibrary, libraryLocationText: library.locationLibrary, monLibraryHoursText: library.monHoursLibrary, friLibraryHoursText: library.friHoursLibrary, satLibraryHoursText: library.satHoursLibrary, sunLibraryHoursText: library.sunHoursLibrary)
        
        
        
        self.myLibraryTableView.allowsSelection = false
        return cell
    }
    
}
