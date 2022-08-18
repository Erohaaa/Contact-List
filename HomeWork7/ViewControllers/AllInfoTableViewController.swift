//
//  allInfoTableViewController.swift
//  HomeWork7
//
//  Created by Vetal on 10.06.2022.
//

import UIKit

class AllInfoTableViewController: UITableViewController {
    
    let person = personalData.getData()
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }

    
////    Первый вариант. Чисто белые секции без параметров.
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return person[section].fullName
//    }
    
    
////    Второй вариант. Создаем модель секции с помощью UITableViewCell и добавленной секции в Мейне.
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerCell = tableView.dequeueReusableCell(withIdentifier: "Header") as! HeaderCellViewController
//        headerCell.personLabel.text = person[section].fullName
//        return headerCell
//    }
 
    
////    Третий вариант, создаем Лейбл внутри кода, не используя Мейн и не срздавая UITableViewCell
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let label = UILabel()
//        label.text = person[section].fullName
//        label.textColor = .white
//        label.textAlignment = .left
//        label.font = UIFont.boldSystemFont(ofSize: 20)
//        return label
//    }

    
//    Четвертый вариант. С помощью него может задать точные координаты расположения лейбла.
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView()
        let label = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 20))
        label.text = person[section].fullName
        label.textColor = .white
        headerView.addSubview(label)
        return headerView
    }
    
//    Смена цвета секций через код
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
            view.backgroundColor = .black
        }
 
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Info", for: indexPath)
        let info = person[indexPath.section]
       
        switch indexPath.row {
        case 0: cell.textLabel?.text = info.phone
        default: cell.textLabel?.text = info.mail
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    

}
