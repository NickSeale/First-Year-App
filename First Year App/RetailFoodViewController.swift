//
//  RetailFoodViewController.swift
//  First Year App
//
//  Created by Kathryn Ohashi on 2015-03-12.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class RetailFoodViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var myTableView: UITableView!
    var arrayOfRestaurants:[Restaurant] = [Restaurant]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpRestaurants()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpRestaurants()
    {
        var restaurant1 = Restaurant(name: "The Lazy Scholar", location: "Victoria Hall", imageName: "person1.png", monHours: "7:30am-1:00am", tuesHours: "7:30am-1:00am", wedHours: "7:30am-1:00am", thursHours: "7:30am-1:00am", friHours: "7:30am-1:00am", satHours: "9:30am-1:00am", sunHours: "9:30am-1:00am")
        var restaurant2 = Restaurant(name: "Canadian Grilling Company", location: "Mac-Corry", imageName: "person2.png", monHours: "11:00am-8:00pm", tuesHours: "11:00am-8:00pm", wedHours: "11:00am-8:00pm", thursHours: "11:00am-8:00pm", friHours: "11:00am-8:00pm", satHours: "CLOSED", sunHours: "CLOSED")
        var restaurant3 = Restaurant(name: "Pita Pit", location: "Mac-Corry", imageName: "person1.png", monHours: "8:30am-6:00pm", tuesHours: "8:30am-6:00pm", wedHours: "8:30am-6:00pm", thursHours: "8:30am-6:00pm", friHours: "8:30am-6:00pm", satHours: "CLOSED", sunHours: "CLOSED")
        var restaurant4 = Restaurant(name: "Pizza Pizza", location: "Mac-Corry", imageName: "person2.png", monHours: "11:00am-6:00pm", tuesHours: "11:00am-6:00pm", wedHours: "11:00am-6:00pm", thursHours: "11:00am-6:00pm", friHours: "11:00am-5:00pm", satHours: "CLOSED", sunHours: "CLOSED")
        var restaurant5 = Restaurant(name: "MC Square", location: "Mac-Corry", imageName: "person1.png", monHours: "7:30am-6:00pm", tuesHours: "7:30am-6:00pm", wedHours: "7:30am-6:00pm", thursHours: "7:30am-6:00pm", friHours: "7:30am-5:00pm", satHours: "CLOSED", sunHours: "CLOSED")
        var restaurant6 = Restaurant(name: "Pita Pit", location: "ARC", imageName: "person2.png", monHours: "8:00am-7:00pm", tuesHours: "8:00am-7:00pm", wedHours: "8:00am-7:00pm", thursHours: "8:00am-7:00pm", friHours: "8:00am-7:00pm", satHours: "11:00am-7:00pm", sunHours: "11:00am-7:00pm")
        var restaurant7 = Restaurant(name: "Teriyaki Experience", location: "ARC", imageName: "person1.png", monHours: "11:00am-7:00pm", tuesHours: "11:00am-7:00pm", wedHours: "11:00am-7:00pm", thursHours: "11:00am-7:00pm", friHours: "11:00am-7:00pm", satHours: "CLOSED", sunHours: "CLOSED")
        var restaurant8 = Restaurant(name: "Pizza Pizza", location: "ARC", imageName: "person2.png", monHours: "11:00am-7:00pm", tuesHours: "11:00am-7:00pm", wedHours: "11:00am-7:00pm", thursHours: "11:00am-7:00pm", friHours: "11:00am-7:00pm", satHours: "11:00am-6:00pm", sunHours: "11:00am-6:00pm")
        var restaurant9 = Restaurant(name: "Booster Juice", location: "ARC", imageName: "person1.png", monHours: "8:30am-8:00pm", tuesHours: "8:30am-8:00pm", wedHours: "8:30am-8:00pm", thursHours: "8:30am-8:00pm", friHours: "8:30am-8:00pm", satHours: "10:00am-6:00pm", sunHours: "10:00am-6:00pm")
        var restaurant10 = Restaurant(name: "Tim Hortons", location: "ARC", imageName: "person2.png", monHours: "8:30am-11:00pm", tuesHours: "8:30am-11:00pm", wedHours: "8:30am-11:00pm", thursHours: "8:30am-11:00pm", friHours: "8:30am-11:00pm", satHours: "8:00am-7:00pm", sunHours: "8:00am-7:00pm")
        var restaurant11 = Restaurant(name: "KHAO", location: "JDUC", imageName: "person1.png", monHours: "11:00am-9:00pm", tuesHours: "11:00am-9:00pm", wedHours: "11:00am-9:00pm", thursHours: "11:00am-9:00pm", friHours: "11:00am-9:00pm", satHours: "11:00am-9:00pm", sunHours: "3:00pm-9:00pm")
        var restaurant12 = Restaurant(name: "Quiznos", location: "JDUC", imageName: "person2.png", monHours: "10:30am-6:00pm", tuesHours: "10:30am-6:00pm", wedHours: "10:30am-6:00pm", thursHours: "10:30am-6:00pm", friHours: "10:30am-11:00pm", satHours: "10:30am-11:00pm", sunHours: "CLOSED")
        var restaurant13 = Restaurant(name: "Gord's Café", location: "Gordon-Brockington House", imageName: "person1.png", monHours: "7:30am-11:00pm", tuesHours: "7:30am-11:00pm", wedHours: "7:30am-11:00pm", thursHours: "7:30am-11:00pm ", friHours: "7:30am-11:00pm", satHours: "9:30am-11:00pm", sunHours: "9:30am-11:00pm")
        var restaurant14 = Restaurant(name: "Goode's Café", location: "Goode's Hall", imageName: "person2.png", monHours: "8:15am-1:15pm", tuesHours: "8:15am-1:15pm", wedHours: "8:15am-1:15pm", thursHours: "8:15am-1:15pm", friHours: "8:15am-1:15pm", satHours: "CLOSED", sunHours: "CLOSED")
        var restaurant15 = Restaurant(name: "Starbucks", location: "Goode's Hall", imageName: "person1.png", monHours: "7:30am-10:00pm", tuesHours: "7:30am-10:00pm", wedHours: "7:30am-10:00pm", thursHours: "7:30am-10:00pm", friHours: "7:30am-7:00pm", satHours: "9:00am-7:00pm", sunHours: "9:00am-9:00pm")
        
        
        
        arrayOfRestaurants.append(restaurant1)
        arrayOfRestaurants.append(restaurant2)
        arrayOfRestaurants.append(restaurant3)
        arrayOfRestaurants.append(restaurant4)
        arrayOfRestaurants.append(restaurant5)
        arrayOfRestaurants.append(restaurant6)
        arrayOfRestaurants.append(restaurant7)
        arrayOfRestaurants.append(restaurant8)
        arrayOfRestaurants.append(restaurant9)
        arrayOfRestaurants.append(restaurant10)
        arrayOfRestaurants.append(restaurant11)
        arrayOfRestaurants.append(restaurant12)
        arrayOfRestaurants.append(restaurant13)
        arrayOfRestaurants.append(restaurant14)
        arrayOfRestaurants.append(restaurant15)
        
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayOfRestaurants.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell:CustomCell = tableView.dequeueReusableCellWithIdentifier("Cell") as CustomCell
       
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.grayColor()
        } else {
            cell.backgroundColor = UIColor.whiteColor()
        }
        
        let restaurant = arrayOfRestaurants[indexPath.row]
        cell.setCell(restaurant.name, locationNameText: restaurant.location, imageName: restaurant.imageName)
        return cell
        
    }
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
         let restaurant = arrayOfRestaurants[indexPath.row]
        
        var detailedViewController:DetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as DetailViewController
        
        detailedViewController.restaurantNameString = restaurant.name
        detailedViewController.restaurantLocationString = restaurant.location
        detailedViewController.monHoursString = restaurant.monHours
        detailedViewController.tuesHoursString = restaurant.tuesHours
        detailedViewController.wedHoursString = restaurant.wedHours
        detailedViewController.thursHoursString = restaurant.thursHours
        detailedViewController.friHoursString = restaurant.friHours
        detailedViewController.SatHoursString = restaurant.satHours
        detailedViewController.SunHoursString = restaurant.sunHours
        detailedViewController.myDetailedimageName = restaurant.imageName
        
        self.presentViewController(detailedViewController, animated: true, completion: nil)
        self.myTableView.deselectRowAtIndexPath(indexPath, animated: true)
        
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
