//
//  ViewController.swift
//  Project1
//
//  Created by Peter Wi on 10/7/21.
//

// this file will reference the iOS user interface toolkit
import UIKit

// I want to create a new screen of data called ViewController, based on UIViewController.
class ViewController: UITableViewController {
    
    // the pictures array will exist for as long as the screen exists
    var pictures = [String]()
    
    
    // we want to change Apple's default behavior from UIViewController.
    // viewDidLoad() is called by UIKit when the screen has loaded
    override func viewDidLoad() {
        // super: tell Apple's UIViewController to run its own code before I run mine.
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // FileManager.default: a data type that lets us work with the filesystem, and in our case we'll be using it to look for files.
        let fm = FileManager.default
        
        // b.m.rep!: resource path of our app's bundle.
        //      ==> bundle: directory containing our compiled program and all our assets.
        //      ==> "tell me where I can find all those images I added to my app."
        let path = Bundle.main.resourcePath!
        
        // items: an array of strings containing filenames.
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                // this is a picture to load.
                pictures.append(item)
            }
        }
        
        print(pictures)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // section: table views can be split into sections.
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // IndexPath: data type that contains both a section number and a row number. We only have one section, so we can ignore that and just use the row number.
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        
        // iOS only creates as many rows as it needs to work. When one rows moves off the top of the screen, iOS will take it away and put it into a reuse queue ready to be recycled into a new row that comes in from the bottom. This means you can scroll through hundreds of rows a second, and iOS can behave lazily and avoid creating any new table view cells - it just recycles the existing ones.
        // ==> dequeueReusableCell
        
        // textLabel? : do this only if there is an actual text label there, or do nothing otherwise.
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    


}

