//
//  ContactsViewController.swift
//  First Year App
//
//  Created by 李梓桐 on 2015-03-30.
//  Copyright (c) 2015 Nicholas Seale. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var ContactsTableView: UITableView!
    
    var arrayOfContacts:[Contacts] = [Contacts]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpContacts()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpContacts()
    {

        var contact1  = Contacts (name: "Queen's Emergency Line",               number: "1-613-533-6111")
        var contact2  = Contacts (name: "Campus Security and Emergency Services",number: "1-613-533-6733")
        var contact3  = Contacts (name: "Fire-Police-Ambulance-Emergencies only",number: "911")
        var contact4  = Contacts (name: "AMS Peer Support Centre",              number: "1-613-533-6000; 75111")
        var contact5  = Contacts (name: "Campus Observation Room (COR)",        number: "1-613-533-6911")
        var contact6  = Contacts (name: "Frontenac Mental Health Services ",    number: "1-613-544-4229")
        var contact7  = Contacts (name: "Good2Talk",                            number: "1-1-866-925-5454")
        var contact8  = Contacts (name: "LGBT Youth Line",                      number: "1-800-268-9688")
        var contact9  = Contacts (name: "Sexual Assault Centre Kingston",       number: "1-613-544-6424")
        var contact10 = Contacts (name: "Telephone Aid Line Kingston (TALK)",   number: "1-613-544-1771")
        var contact11 = Contacts (name: "Telehealth Ontario",                   number: "1-800-797-0000")
        var contact12 = Contacts (name: "Walk Home Service",                    number: "1-613-533-9255")
        var contact13 = Contacts (name: "Alma Mater Society (AMS)",             number: "1-613-533-3001")
        var contact15 = Contacts (name: "Equity Office",                        number: "1-613-533-2563")
        var contact16 = Contacts (name: "Four Directions Aboriginal Student Centre", number: "1-613-533-6970")
        var contact17 = Contacts (name: "Health, Counselling and Disability",   number: "1-613-533-2506")
        var contact18 = Contacts (name: "Human Rights Office",                  number: "1-613-533-6886")
        var contact19 = Contacts (name: "Queen’s University International Centre", number: "1-613-533-2604")
        var contact20 = Contacts (name: "Queen’s Sexual Health Resource Centre", number: "1-613-533-2959")
        var contact21 = Contacts (name: "Sexual Assault Counselling",           number: "1-613-533-6000; 78441")
        var contact22 = Contacts (name: "Student Academic Success Services",    number: "1-613-533-6315")
        var contact23 = Contacts (name: "Student Awards Office (OSAP)",         number: "1-613-533-2216")
        var contact24 = Contacts (name: "Grad & Professional Students Society", number: "1-613-533-3169")
        var contact25 = Contacts (name: "University Chaplain",                  number: "1-613-533-2186")
        var contact26 = Contacts (name: "University Ombudsman",                 number: "1-613-533-6495")
        var contact27 = Contacts (name: "Emergency Information Status Line",    number: "1-613-533-3333")
        var contact28 = Contacts (name: "Crisis Counselling",                   number: "1-613-533-6000; 78264")
        var contact29 = Contacts (name: "Undergraduate",                        number: "1-613-533-2218")
        var contact30 = Contacts (name: "Graduate",                             number: "1-613-533-6100")
        var contact31 = Contacts (name: "Student Awards / Financial Assistance", number: "1-613-533-2216")
        var contact32 = Contacts (name: "Alumni Relations",                     number: "1-800-267-7837")
        var contact33 = Contacts (name: "Alumni Review Magazine",               number: "1-613-533-6000; 75464")
        var contact34 = Contacts (name: "Human Resources",                      number: "1-613-533-2070")
        var contact35 = Contacts (name: "Queen's Event Services",               number: "1-613-533-2223")
        var contact36 = Contacts (name: "University Communications",            number: "613-533-3410")
        var contact37 = Contacts (name: "University Marketing",                 number: "613-533-2035")
        var contact38 = Contacts (name: "Residence Admissions",                 number: "1-613-533-2550")
        var contact39 = Contacts (name: "Residence Life Office ",               number: "1-613-533-6790")
        var contact40 = Contacts (name: "Facilities Control Centre",            number: "1-613-533-3155")
        var contact41 = Contacts (name: "Visitor and Information Centre",       number: "1-613-533-2794")
        var contact42 = Contacts (name: "Campus Tours",                         number: "1-613-533-2217")
        var contact43 = Contacts (name: "Isabel Bader Centre for the Performing Arts", number: "1-613-533-2424")
        var contact44 = Contacts (name: "Agnes Etherington Art Centre",         number: "1-613-533-2190")
        var contact45 = Contacts (name: "Brockington House Front Desk",         number: "1-613-533-3183")
        var contact46 = Contacts (name: "Chown Hall Front Desk",                number: "1-613-533-3183")
        var contact47 = Contacts (name: "Graduate Residence Front Desk",        number: "1-613-533-2531")
        var contact48 = Contacts (name: "Gordon House Front Desk",              number: "1-613-533-3183")
        var contact49 = Contacts (name: "Harkness Hall Front Desk",             number: "1-613-533-2531")
        var contact50 = Contacts (name: "Jean Royce Hall Front Desk",           number: "1-613-533-2551")
        var contact51 = Contacts (name: "Leonard Hall Front Desk",              number: "1-613-533-3183")
        var contact52 = Contacts (name: "Leggett Hall Front Desk",              number: "1-613-533-3183")
        var contact53 = Contacts (name: "McNeill House Front Desk",             number: "613-533-3183")
        var contact54 = Contacts (name: "Morris Hall Front Desk",               number: "1-613-533-3183")
        var contact55 = Contacts (name: "Victoria Hall Front Desk",             number: "1-613-533-2531")
        var contact56 = Contacts (name: "Waldron Tower Front Desk",             number: "1-613-533-6724")
        var contact57 = Contacts (name: "Watts Hall Front Desk",                number: "1-613-533-3183")
        var contact58 = Contacts (name: "Adelaide Hall Front Desk",             number: "1-613-533-3183")
        var contact59 = Contacts (name: "Ban Righ Hall Front Desk",             number: "1-613-533-3183")

        arrayOfContacts.append(contact1)
        arrayOfContacts.append(contact2)
        arrayOfContacts.append(contact3)
        arrayOfContacts.append(contact4)
        arrayOfContacts.append(contact5)
        arrayOfContacts.append(contact6)
        arrayOfContacts.append(contact7)
        arrayOfContacts.append(contact8)
        arrayOfContacts.append(contact9)
        arrayOfContacts.append(contact10)
        arrayOfContacts.append(contact11)
        arrayOfContacts.append(contact12)
        arrayOfContacts.append(contact13)
        arrayOfContacts.append(contact15)
        arrayOfContacts.append(contact16)
        arrayOfContacts.append(contact17)
        arrayOfContacts.append(contact18)
        arrayOfContacts.append(contact19)
        arrayOfContacts.append(contact20)
        arrayOfContacts.append(contact21)
        arrayOfContacts.append(contact22)
        arrayOfContacts.append(contact23)
        arrayOfContacts.append(contact24)
        arrayOfContacts.append(contact25)
        arrayOfContacts.append(contact26)
        arrayOfContacts.append(contact27)
        arrayOfContacts.append(contact28)
        arrayOfContacts.append(contact29)
        arrayOfContacts.append(contact30)
        arrayOfContacts.append(contact31)
        arrayOfContacts.append(contact32)
        arrayOfContacts.append(contact33)
        arrayOfContacts.append(contact34)
        arrayOfContacts.append(contact35)
        arrayOfContacts.append(contact36)
        arrayOfContacts.append(contact37)
        arrayOfContacts.append(contact38)
        arrayOfContacts.append(contact39)
        arrayOfContacts.append(contact40)
        arrayOfContacts.append(contact41)
        arrayOfContacts.append(contact42)
        arrayOfContacts.append(contact43)
        arrayOfContacts.append(contact44)
        arrayOfContacts.append(contact45)
        arrayOfContacts.append(contact46)
        arrayOfContacts.append(contact47)
        arrayOfContacts.append(contact48)
        arrayOfContacts.append(contact49)
        arrayOfContacts.append(contact50)
        arrayOfContacts.append(contact51)
        arrayOfContacts.append(contact52)
        arrayOfContacts.append(contact53)
        arrayOfContacts.append(contact54)
        arrayOfContacts.append(contact55)
        arrayOfContacts.append(contact56)
        arrayOfContacts.append(contact57)
        arrayOfContacts.append(contact58)
        arrayOfContacts.append(contact59)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayOfContacts.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell:ContactsCustomCell = tableView.dequeueReusableCellWithIdentifier("Cell") as ContactsCustomCell
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.grayColor()
            cell.rightLabel.backgroundColor = UIColor.grayColor()
        }
        else
        {
            cell.backgroundColor = UIColor.whiteColor()
            cell.rightLabel.backgroundColor = UIColor.whiteColor()
        }
        
        
        
        let contact = arrayOfContacts[indexPath.row]
        
        cell.setContactsCell(contact.name, rightLabelText: contact.number)
        
        self.ContactsTableView.allowsSelection = false
        
        return cell
        
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.ContactsTableView.deselectRowAtIndexPath(indexPath, animated: false)
    }
    
    /*
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    let phone = "tel://6137371111"
    
    let url:NSURL = NSURL(string: phone)!
    UIApplication.sharedApplication().openURL(url)
    }
    */
}
