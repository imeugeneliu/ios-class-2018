//
//  DetailViewController.swift
//  slidemenu
//
//  Created by Eugene Liu on 5/30/18.
//  Copyright © 2018 Eugene Liu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 2;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        switch indexPath.row
        {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: countryCell.self), for: indexPath) as! countryCell
            cell.iconImageView.image = UIImage(named: "country")
            cell.countryName.text = sport.country
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: descriptionCell.self), for: indexPath) as! descriptionCell
            cell.descriptionLabel.text = sport.description
            return cell
        /*case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailTextCell.self), for: indexPath) as! RestaurantDetailTextCell
            cell.descriptionLabel.text = restaurant.description
            return cell*/
        default:
            fatalError("fail to instantiate table view cell")
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    @IBOutlet var headerView: SportsDetailHeaderView!
    var sport: Sports = Sports()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        headerView.headerImageView.image = UIImage(named: sport.image)
        headerView.nameLabel.text = sport.athleteName
        headerView.teamLabel.text = sport.team
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
