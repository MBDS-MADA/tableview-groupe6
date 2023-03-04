//
//  CountriesTableViewController.swift
//  TP2_Groupe_6
//
//  Created by user224319 on 2/17/23.
//

import UIKit

class CountriesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        /*var count = 0;
        var continent = ""

        for country in countries {
          if(continent != country.continent){
            continent = country.continent
            count += 1
          }
        }*/
        return countries.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //let groupByCountry : [String:[Country]] = Dictionary(grouping: countries, by: { $0.continent })
        /*if section == 0 {
            return (groupByCountry["Europe"]?.count)!
        }
        if section == 1 {
            return (groupByCountry["Amerique"]?.count)!
        }
        
        return 0*/
        return countries[section].count
    }
    
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        // groupByCountry : [String:[Country]] = Dictionary(grouping: countries, by: { $0.continent })
        
        cell.textLabel?.text = countries[indexPath.section][indexPath.row].name
        cell.detailTextLabel?.text = countries[indexPath.section][indexPath.row].isoCode
        cell.detailTextLabel?.textColor = UIColor.gray
        let image = UIImage(named: countries[indexPath.section][indexPath.row].isoCode)
        cell.imageView?.image = image            /*if indexPath.section == 0{
            let country = groupByCountry["Europe"]?[indexPath.row]
            cell.textLabel?.text = country!.name
            cell.detailTextLabel?.text = country!.isoCode
            cell.detailTextLabel?.textColor = UIColor.gray
            let image = UIImage(named: country!.isoCode)
            let image = UIImage(named: country!.isoCode)
            cell.imageView?.image = image
        }
        
        if indexPath.section == 1{
            let country = groupByCountry["Amerique"]?[indexPath.row]
            cell.textLabel?.text = country!.name
            cell.detailTextLabel?.text = country!.isoCode
            cell.detailTextLabel?.textColor = UIColor.gray
            let image = UIImage(named: country!.isoCode)
            let image = UIImage(named: country!.isoCode)
            cell.imageView?.image = image
        }*/
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection
                            section: Int) -> String? {
        /*if(section == 0)  {
         return "Europe"
         }
         if(section == 1){
         return "Amerique"
         }*/
        return countries[section][0].continent
    }
    
    // Override to support conditional editing of the table view.
    /*override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
        return true
    }*/
    

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
