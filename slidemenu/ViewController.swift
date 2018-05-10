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
    @IBOutlet weak var viewConstraint: NSLayoutConstraint!
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var slideView: UIView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true 
        
        blurView.layer.cornerRadius = 15
        slideView.layer.shadowColor = UIColor.black.cgColor
        slideView.layer.shadowOpacity = 0.8
        slideView.layer.shadowOffset = CGSize(width: 5, height: 0)
        viewConstraint.constant = -175 //hide slideView
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle
    {
        return .lightContent
    }

    @IBAction func panPerformed(_ sender: UIPanGestureRecognizer)
    {
        if sender.state == .began || sender.state == .changed
        {
            let translation = sender.translation(in: self.view).x //will give x and y value but only need x
            
            if translation > 0 //swipe right
            {
                if viewConstraint.constant < 20
                {
                    UIView.animate(withDuration: 0.2, animations: {self.viewConstraint.constant += translation / 10; self.view.layoutIfNeeded()})
                }
            }
            else //swipe left
            {
                if viewConstraint.constant > -175
                {
                    UIView.animate(withDuration: 0.2, animations: {self.viewConstraint.constant += translation / 10; self.view.layoutIfNeeded()})
                }
            }
        }
        
        else if sender.state == .ended
        {
            
            if viewConstraint.constant < -100
            {
                UIView.animate(withDuration: 0.2, animations: {self.viewConstraint.constant = -175; self.view.layoutIfNeeded()})
            }
            else
            {
                UIView.animate(withDuration: 0.2, animations: {self.viewConstraint.constant = 0; self.view.layoutIfNeeded()})
            }
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        switch segue.identifier
        {
            case "segueToBaseball":
                let destinationController = segue.destination as! sportsTableViewController
                destinationController.firstName = ["Derek", "Alex", "Chien-Ming", "David", "Mariano"]
                destinationController.LastName = ["Jeter", "Rodriguez", "Wang", "Ortiz", "Rivera"]
                destinationController.image = ["jeter", "rodriguez", "wang", "ortiz", "rivera"]
                destinationController.position = ["SS", "3B", "P", "DH", "RP"]
                destinationController.team = ["NY Yankees", "NY Yankees", "NY Yankees", "Boston Red Sox", "NY Yankees"]
            
            case "segueToBasketball":
                let destinationController = segue.destination as! sportsTableViewController
                destinationController.firstName = ["Michael", "Magic", "Kobe", "Lebron", "Stephen"]
                destinationController.LastName = ["Jordan", "Johnson", "Bryant", "James", "Curry"]
                destinationController.image = ["jordan", "magic", "kobe", "lebron", "curry"]
                destinationController.position = ["Shooting Guard", "Point Guard", "Shooting Guard", "Small Foward", "Point Guard"]
                destinationController.team = ["Chicago Bulls", "Los Angles Lakers", "Los Angles Lakers", "Cleveland Cavaliers", "Golden State Warriors"]
            
            
            case "segueToSoccer":
                let destinationController = segue.destination as! sportsTableViewController
                destinationController.firstName = ["Zlatan", "Lionel", "Cristiano", "Neymar", "Gareth"]
                destinationController.LastName = ["Ibrahimovic", "Messi", "Ronaldo", "", "Bale"]
                destinationController.image = ["ibrah", "messi", "ronaldo", "neymar", "bale"]
                destinationController.position = ["Forward", "Forward",  "Forward", "Forward","Midfielder"]
                destinationController.team = ["Los Angles Galaxy", "FC Barcelona", "Real Madrid", "Paris Saint Germain", "Real Madrid"]
            
            case "segueToFootball":
                let destinationController = segue.destination as! sportsTableViewController
                destinationController.firstName = ["Tom", "Odell", "Joe", "Jerry", "Adrian"]
                destinationController.LastName = ["Brady", "Beckham Jr", "Montana", "Rice", "Peterson"]
                destinationController.image = ["goat", "obj", "joe", "rice", "ap"]
                destinationController.position = ["Quarterback", "Wide Receiver",  "Quarterback", "Wide Receiver","Running Back"]
                destinationController.team = ["New England Patriots", "New York Giants", "San Francisco 49ers", "San Francisco 49ers", "Minnesota Vikings"]
            
            case "segueToHockey":
                let destinationController = segue.destination as! sportsTableViewController
                destinationController.firstName = ["Wayne", "Patrick", "Jonathan", "Sidney", "Patrick"]
                destinationController.LastName = ["Gretzky", "Kane", "Toews", "Crosby", "Roy"]
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
