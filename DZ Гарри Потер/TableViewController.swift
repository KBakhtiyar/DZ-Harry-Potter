//
//  TableViewController.swift
//  DZ Гарри Потер
//
//  Created by BK on 08.03.2024.
//

import UIKit

class HarryPotterTableViewController: UITableViewController {
    
    let characters: [HarryPotterCharacter] = [
        HarryPotterCharacter(name: "Harry", surname: "Potter", house: "Gryffindor", wand: "Holly, 11', phoenix feather core"),
        HarryPotterCharacter(name: "Hermione", surname: "Granger", house: "Gryffindor", wand: "Vine, 10 ¾', dragon heartstring core"),
        HarryPotterCharacter(name: "Ron", surname: "Weasley", house: "Gryffindor", wand: "Willow, 14', unicorn hair core"),
        
            HarryPotterCharacter(name: "Albus", surname: "Dumbledore", house: "Gryffindor", wand: "Elder, 15', thestral tail hair core"),
            HarryPotterCharacter(name: "Severus", surname: "Snape", house: "Slytherin", wand: "Yew, 13 ½', phoenix feather core"),
            HarryPotterCharacter(name: "Minerva", surname: "McGonagall", house: "Gryffindor", wand: "Fir, 9 ½', dragon heartstring core"),
            HarryPotterCharacter(name: "Draco", surname: "Malfoy", house: "Slytherin", wand: "Hawthorn, 10', unicorn hair core"),
            HarryPotterCharacter(name: "Luna", surname: "Lovegood", house: "Ravenclaw", wand: "Cherry, 14', unicorn hair core"),
            HarryPotterCharacter(name: "Neville", surname: "Longbottom", house: "Gryffindor", wand: "Cherry, 13', unicorn hair core"),
            HarryPotterCharacter(name: "Ginny", surname: "Weasley", house: "Gryffindor", wand: "Yew, 9', phoenix feather core"),
            HarryPotterCharacter(name: "Sirius", surname: "Black", house: "Gryffindor", wand: "Mahogany, 16', unknown core"),
            HarryPotterCharacter(name: "Remus", surname: "Lupin", house: "Gryffindor", wand: "Cypress, 10 ¼', unicorn hair core"),
            HarryPotterCharacter(name: "Bellatrix", surname: "Lestrange", house: "Slytherin", wand: "Walnut, 12 ¾', dragon heartstring core"),
            HarryPotterCharacter(name: "Lucius", surname: "Malfoy", house: "Slytherin", wand: "Elm, 18', dragon heartstring core"),
            HarryPotterCharacter(name: "Rubeus", surname: "Hagrid", house: "Gryffindor", wand: "Oak, 16', unknown core")
    ]
   

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CharacterTableViewCell.self, forCellReuseIdentifier: "CharacterCell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath) as! CharacterTableViewCell
        let character = characters[indexPath.row]

        cell.nameLabel.text = "\(character.name) \(character.surname)"
        cell.houseLabel.text = "House: \(character.house)"
        cell.wandLabel.text = "Wand: \(character.wand)"

        
        switch character.house {
        case "Gryffindor":
            cell.backgroundColor = .orange
        case "Slytherin":
            cell.backgroundColor = .lightGray
        case "Ravenclaw":
            cell.backgroundColor = .cyan
        case "Hufflepuff":
            cell.backgroundColor = .yellow
        default:
            cell.backgroundColor = .white
        }

        return cell
    }
}
