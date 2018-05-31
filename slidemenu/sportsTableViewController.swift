//
//  sportsTableViewController.swift
//  slidemenu
//
//  Created by Eugene Liu on 5/10/18.
//  Copyright © 2018 Eugene Liu. All rights reserved.
//

import UIKit

class sportsTableViewController: UITableViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return name.count
    }

    //var firstName : Array<String> = [""]
    //var LastName : Array<String> = [""]
    var name: Array <String> = [""]
    var image: Array<String> = [""]
    var position: Array<String> = [""]
    var team: Array<String> = [""]
    var tag : Int = 0
    
    /*var sports: [Sports] = [Sports(athleteName: "Derek Jeter", position: "SS", team: "NY Yankees", image: "jeter"), Sports(athleteName: "Alex Rodriguez", position: "3B", team: "NY Yankees", image: "rodriguez"),
        Sports(athleteName: "Chien-Ming Wang", position: "P", team: "NY Yankees", image: "wang"),
        Sports(athleteName: "David Ortiz", position: "DH", team: "Boston Red Sox", image: "ortiz"),
        Sports(athleteName: "Mariano Rivera", position: "RP", team: "NY Yankees", image: "rivera"),
        Sports(athleteName: "Michael Jordan", position: "Shooting Guard", team: "Chicago Bulls", image: "jordan"),
        Sports(athleteName: "Magic Johnson", position: "Point Guard", team: "Los Angles Lakers", image: "magic"),
        Sports(athleteName: "Kobe Bryant", position: "Shooting Guard", team: "Los Angles Lakers", image: "kobe"),
        Sports(athleteName: "Lebron James", position: "Small Foward", team: "Cleveland Cavaliers", image: "lebron"),
        Sports(athleteName: "Zlatan Ibrahimovic", position: "Forward", team: "Los Angles Galaxy", image: "ibrah"),
        Sports(athleteName: "Lionel Messi", position: "Forward", team: "FC Barcelona", image: "messi"),
        Sports(athleteName: "Cristiano Ronaldo", position: "Forward", team: "Real Madrid", image: "ronaldo"),
        Sports(athleteName: "Neymar", position: "Forward", team: "Paris Saint Germain", image: "neymar"),
        Sports(athleteName: "Gareth Bale", position: "Midfielder", team: "Real Madrid", image: "bale"),
        Sports(athleteName: "Tom Brady", position: "Quarterback", team: "New England Patriots", image: "goat"),
        Sports(athleteName: "Odell Beckham Jr", position: "Wide Receiver", team: "New York Giants", image: "obj"),
        Sports(athleteName: "Joe Montana", position: "Quarterback", team: "San Francisco 49ers", image: "joe"),
        Sports(athleteName: "Jerry Rice", position: "Wide Receiver", team: "San Francisco 49ers", image: "rice"),
        Sports(athleteName: "Adrian Peterson", position: "Running Back", team: "Minnesota Vikings", image: "ap")]
    */
    
    var baseball: [Sports] = [Sports(athleteName: "Derek Jeter", position: "SS", team: "NY Yankees", image: "jeter", country: "USA", description: "The Yankees captain, a 14-time All-Star, five-time World Series Champion, also the Yankees' all-time career leader in hits, doubles, geames played, stolen bases, times on base, plate appearances, and at bats. He has 3465 career hits and is regarded as one of the best Yankee of all time. "), Sports(athleteName: "Alex Rodriguez", position: "3B", team: "NY Yankees", image: "rodriguez", country: "USA", description: "Nicknamed \"A-Rod\", a 14-time All-Star, World Series Champion, three-time AL MVP, with 3115 career hits, and 696 career homeruns."), Sports(athleteName: "Chien-Ming Wang", position: "P", team: "NY Yankees", image: "wang", country: "Taiwan", description: "The best Taiwanese pitcher to ever pitch in the MLB, with 19 wins in both seasons, was one of the favorites to win AL Cy-Young Award for those years. He sparked a baseball frenzy in Taiwan from 2005-2009."), Sports(athleteName: "David Ortiz", position: "DH", team: "Boston Red Sox", image: "ortiz", country: "Dominican Republic", description: "Nicknamed \"Big Papi\" was a ten-time All-Star, a three-time World Series Champion. Holding the Red Sox's single-season record for home runs with 54, with 541 career homeruns."), Sports(athleteName: "Mariano Rivera", position: "RP", team: "NY Yankees", image: "rivera", country: "Panama", description: "Nicknamed \"Mo\" or \"SandMan\" was a 13-time All-Star, a five-time World Series Champion, and held the MLB record for career saves with 652 and is regarded as the best closer of all time, with his signature pitch the \"cutter\".")]
    var basketball: [Sports] = [Sports(athleteName: "Michael Jordan", position: "Shooting Guard", team: "Chicago Bulls", image: "jordan", country: "USA", description: "Nicknamed \"The GOAT\" which stands for Greatest Of All Time. Jordan was a six-time NBA Champion, six-time NBA Finals MVP, five-time NBA MVP, 14-time All-Star. He is one of the few people who has won a NCAA title, an Olympic Gold Medal, and a NBA Championship. HOF."), Sports(athleteName: "Magic Johnson", position: "Point Guard", team: "Los Angles Lakers", image: "magic", country: "USA", description: "Nicknamed \"Magic Johnson\" was a five-time NBA Champion, three-time NBA Finals MVP, three-time NBA MVP, and a 12-time All-Star. He has also won the NCAAA title, NBA Championship, and an Olympic Gold Medal. HOF."), Sports(athleteName: "Kobe Bryant", position: "Shooting Guard", team: "Los Angles Lakers", image: "kobe", country: "USA", description: "Nicknamed \"Black Mamba\" was a five-time NBA Champion, two-time NBA Finals MVP, one-time NBA MVP, and a 18-time All-Star. He scored 63 on his final game against the Utah Jazz."), Sports(athleteName: "Lebron James", position: "Small Foward", team: "Cleveland Cavaliers", image: "lebron", country: "USA", description: "Nicknamed \"The King\" is a three-time NBA Champion, three-time NBA Finals MVP, four-time MBA MVP, and a 14-time All-Star. He is often compared to Michael Jordan as the GOAT."), Sports(athleteName: "Stephen Curry", position: "Point Guard", team: "Golden State Warriors", image: "curry", country: "USA", description: "Nicknamed \"Chef Curry\" is a two-time NBA Champion, two-time NBA MVP, and a five-time All-Star. He set a NBA single season record for three-pointers with 402.")]
    var soccer: [Sports] = [Sports(athleteName: "Zlatan Ibrahimovic", position: "Forward", team: "Los Angles Galaxy", image: "ibrah", country: "Sweden", description: "is a Swedish professional footballer who plays as a forward for LA Galaxy. Primarily a striker, he is a prolific goalscorer, who is best known for his technique, creativity, strength, ability in the air, and his powerful and accurate striking ability."), Sports(athleteName: "Lionel Messi", position: "Forward", team: "FC Barcelona", image: "messi", country: "Argentina", description: "Messi has a record-tying five Ballon d'Or awards, four of which he won consecutively, and a record five European Golden Shoes. Messi holds the records for most official goals scored in La Liga (383), a La Liga season (50), a club football season in Europe (73), a calendar year (91), El Clásico (26), as well as those for most assists in La Liga (149) and the Copa América (11)."), Sports(athleteName: "Cristiano Ronaldo", position: "Forward", team: "Real Madrid", image: "ronaldo", country: "Portugal", description: "Ronaldo has a record-tying five Ballon d'Or awards,[note 2] the most for a European player, and is the first player to win four European Golden Shoes. He has won 26 trophies in his career, including five league titles, five UEFA Champions League titles and one UEFA European Championship. A prolific goalscorer, Ronaldo holds the records for most official goals scored in Europe's top-five leagues (395), the UEFA Champions League (120), the UEFA European Championship (9), as well as those for most assists in the UEFA Champions League (34) and the UEFA European Championship (6)."), Sports(athleteName: "Neymar", position: "Forward", team: "Paris Saint Germain", image: "neymar", country: "Brazil", description: "Known for his dribbling, finishing, and ability with both feet, Neymar has earned comparisons to former Brazil and Santos forward Pelé. In August 2017, Neymar moved from Barcelona to Paris Saint-Germain in a transaction worth €222 million, making him the world's most expensive player."), Sports(athleteName: "Gareth Bale", position: "Midfielder", team: "Real Madrid", image: "bale", country: "Wales", description: "Renowned for his ball striking from distance, swerving free kicks, and his ability to get past defenders with pace, Bale has received plaudits from his peers, who have described him as a footballer with \"tremendous speed, great crossing ability, a great left foot and exceptional physical qualities\". Scored two goals against Liverpool in the 2018 UEFA Champions League Finals to help Real Madrid wins its third title in three years.")]
    var football: [Sports] = [Sports(athleteName: "Tom Brady", position: "Quarterback", team: "New England Patriots", image: "goat", country: "USA", description: "He is one of only two players to win five Super Bowls and the only player to win them all playing for one team. He is a five-time Super Bowl Champion and a four-time Super Bowl MVP, and a three-time NFL MVP. He solidifies himself as the \"GOAT\" when he made a 29-3 comeback against the Atlanta Falcons in Super Bowl 51."), Sports(athleteName: "Odell Beckham Jr", position: "Wide Receiver", team: "New York Giants", image: "obj", country: "USA", description: "OBJ became the fastest player in NFL history to reach both 200 career receptions and 4,000 career receiving yards. In 2016, he recorded his first 100-reception season and reached the NFL playoffs for the first time in his career, after helping the Giants to an 11-5 season record."), Sports(athleteName: "Joe Montana", position: "Quarterback", team: "San Francisco 49ers", image: "joe", country: "USA", description: "was a four-time Super Bowl Champion, a three-time Super Bowl MVP, and a two-time NFL MVP. He also holds Super Bowl career records for most passes without an interception (122 in 4 games) and the all-time highest quarterback rating of 127.8. HOF."), Sports(athleteName: "Jerry Rice", position: "Wide Receiver", team: "San Francisco 49ers", image: "rice", country: "USA", description: "was a three-time Super Bowl Champion, a one-time Super Bowl MVP. He is widely considered to be the greatest wide receiver in NFL history, and often called the greatest NFL player of all time. He is the all-time leader in most major statistical categories for wide receivers, including receptions, touchdown receptions, and receiving yards, once being the leader for total yards and touchdowns in a season. HOF."), Sports(athleteName: "Adrian Peterson", position: "Running Back", team: "Minnesota Vikings", image: "ap", country: "USA", description: "is a one-time NFL MVP and a Heisman Trophy winner. Peterson set the NCAA freshman rushing record with 1,925 yards as a true freshman during the 2004 season. As a unanimous first-team All-American, he became the first freshman to finish as the runner-up in the Heisman Trophy balloting. Peterson finished his college football career as the Sooners' third all-time leading rusher.  He set an NFL record for most rushing yards in a single game (296)")]
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cellIdentifier = "sportsCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! sportsTableViewCell
//        cell.sportsName.text = firstName[indexPath.row] + " " + LastName[indexPath.row]
//        cell.sportsImage.image = UIImage(named: image[indexPath.row])
        cell.sportsPosition.text = position[indexPath.row]
        cell.sportsTeamName.text = team[indexPath.row]
//        cell.sportsPosition.text = sport[indexPath.row].position
//        cell.sportsTeamName.text = sport[indexPath.row].team
        cell.sportsName.text = name[indexPath.row]
        cell.sportsImage.image = UIImage(named: image[indexPath.row])
        return cell
    }
    
/*    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "toWeb"
        {
            if let indexPath = tableView.indexPathForSelectedRow
            {
                let destinationController = segue.destination as! webViewController
//                destinationController.athleteFirstName = firstName[indexPath.row]
//                destinationController.athleteLastName = LastName[indexPath.row]
            }
        }
    }
*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "toDetailView"
        {
            if let indexPath = tableView.indexPathForSelectedRow
            {
                let destinationController = segue.destination as! DetailViewController
                //destinationController.sport = sports[indexPath.row]
                if (tag == 0)
                {
                    destinationController.sport = baseball[indexPath.row]
                }
                if (tag == 1)
                {
                    destinationController.sport = basketball[indexPath.row]
                }
                if (tag == 2)
                {
                    destinationController.sport = soccer[indexPath.row]
                }
                if (tag == 3)
                {
                    destinationController.sport = football[indexPath.row]
                }
            }
        }
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
