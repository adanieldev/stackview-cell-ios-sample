//
//  AnswerDetailsTableViewController.swift
//  StackViewCellSample
//
//  Created by Daniel Alvarez on Sep/9/19.
//  Copyright © 2019 Daniel Alvarez. All rights reserved.
//

import UIKit

struct Question {
    
    var title: String
    var answers: [Answer]
    
}

struct Answer {
    var title: String
}

class AnswerDetailsTableViewController: UITableViewController {
    
    var question: Question?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let answers: [Answer] = [Answer(title: "Answer 1"), Answer(title: "Answer 2 Answer 2 Answer 2 Answer 2 Answer 2 Answer 2 Answer 2 Answer 2 Answer 2 Answer 2 Answer 2 Answer 2 Answer 2"), Answer(title: "Answer 3, Answer 3 Answer 3 Answer 3")]
        
        question = Question(title: "Question 1", answers: answers)
    

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return question?.answers.count ?? 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath) as? AnswersTableViewCell

        cell?.questionTitleLabel.text = question?.title
        
        
        for answer in question?.answers ?? [] {
            
            let view = Bundle.main.loadNibNamed("AnswerView", owner: self, options: nil)?.first as? AnswerView
            
            view?.titleAnswerLabel.text = answer.title
    
            cell?.answersStackView.addArrangedSubview(view!)
        }
        

        return cell!
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
