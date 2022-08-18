//
//  ContactsTableViewController.swift
//  HomeWork7
//
//  Created by Vetal on 10.06.2022.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    var person = personalData.getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        cell.textLabel?.text = person[indexPath.row].fullName
        cell.imageView?.image = UIImage(named: person[indexPath.row].fullName)
        cell.imageView?.layer.cornerRadius = 30
        cell.imageView?.layer.masksToBounds = true
        return cell
    }
    
   
    


    
   
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathsForSelectedRows?.first else { return }
        let getData = segue.destination as! ContactInfoViewController
        getData.info = person[indexPath.row]
    }
    
    
}
   
