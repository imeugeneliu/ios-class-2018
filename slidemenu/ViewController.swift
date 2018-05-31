//
//  ViewController.swift
//  slidemenu
//
//  Created by Eugene Liu on 4/15/18.
//  Copyright © 2018 Eugene Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle
    {
        return .lightContent
    }
    
    @IBAction func goGoTable(_ sender: UIButton)
    {
        self.performSegue(withIdentifier: "goTable", sender: sender.tag)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let tag = sender as! Int

        switch tag
        {
            case 0:
                let destinationController = segue.destination as! sportsTableViewController
                //destinationController.firstName = ["Derek", "Alex", "Chien-Ming", "David", "Mariano"]
                //destinationController.LastName = ["Jeter", "Rodriguez", "Wang", "Ortiz", "Rivera"]
                destinationController.tag = 0
                destinationController.name = ["Derek Jeter", "Alex Rodriguez", "Chien-Ming Wang", "David Ortiz", "Mariano Rivera"]
                destinationController.image = ["jeter", "rodriguez", "wang", "ortiz", "rivera"]
                destinationController.position = ["Short Stop", "Third Base", "Pitcher", "Designated Hitter", "Relief Pitcher"]
                destinationController.team = ["NY Yankees", "NY Yankees", "NY Yankees", "Boston Red Sox", "NY Yankees"]
            
            case 1:
                let destinationController = segue.destination as! sportsTableViewController
                //destinationController.firstName = ["Michael", "Magic", "Kobe", "Lebron", "Stephen"]
                //destinationController.LastName = ["Jordan", "Johnson", "Bryant", "James", "Curry"]
                destinationController.tag = 1
                destinationController.name = ["Michael Jordan", "Magic Johnson", "Kobe Bryant", "Lebron James", "Stephen Curry"]
                destinationController.image = ["jordan", "magic", "kobe", "lebron", "curry"]
                destinationController.position = ["Shooting Guard", "Point Guard", "Shooting Guard", "Small Foward", "Point Guard"]
                destinationController.team = ["Chicago Bulls", "Los Angles Lakers", "Los Angles Lakers", "Cleveland Cavaliers", "Golden State Warriors"]
            
            case 2:
                let destinationController = segue.destination as! sportsTableViewController
                //destinationController.firstName = ["Zlatan", "Lionel", "Cristiano", "Neymar", "Gareth"]
                //destinationController.LastName = ["Ibrahimovic", "Messi", "Ronaldo", "", "Bale"]
                destinationController.tag = 2
                destinationController.name = ["Zlatan Ibrahimovic", "Lionel Messi", "Cristiano Ronaldo", "Neymar", "Gareth Bale"]
                destinationController.image = ["ibrah", "messi", "ronaldo", "neymar", "bale"]
                destinationController.position = ["Forward", "Forward",  "Forward", "Forward","Midfielder"]
                destinationController.team = ["Los Angles Galaxy", "FC Barcelona", "Real Madrid", "Paris Saint Germain", "Real Madrid"]
            
            case 3:
                let destinationController = segue.destination as! sportsTableViewController
                //destinationController.firstName = ["Tom", "Odell", "Joe", "Jerry", "Adrian"]
                //destinationController.LastName = ["Brady", "Beckham Jr", "Montana", "Rice", "Peterson"]
                destinationController.tag = 3
                destinationController.name = ["Tom Brady", "Odell Beckham Jr", "Joe Montana", "Jerry Rice", "Adrian Peterson"]
                destinationController.image = ["goat", "obj", "joe", "rice", "ap"]
                destinationController.position = ["Quarterback", "Wide Receiver",  "Quarterback", "Wide Receiver","Running Back"]
                destinationController.team = ["New England Patriots", "New York Giants", "San Francisco 49ers", "San Francisco 49ers", "Minnesota Vikings"]
            
            case 4:
                let destinationController = segue.destination as! sportsTableViewController
                //destinationController.firstName = ["Wayne", "Patrick", "Jonathan", "Sidney", "Patrick"]
                //destinationController.LastName = ["Gretzky", "Kane", "Toews", "Crosby", "Roy"]
                destinationController.image = ["gretz", "kane", "jona", "sid", "roy"]
                destinationController.position = ["Centre", "Right Wing",  "Centre", "Centre","Goaltender"]
                destinationController.team = ["Edmonton Oilers", "Chicago Blackhawks", "Chicago Blackhawks", "Pittsburgh Penguins", "Montreal Canadiens"]
            
            default:
                break
        }
    }
  
    /* override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }*/
}
