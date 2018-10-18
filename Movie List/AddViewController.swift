//
//  AddViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_18 on 10/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    //var movieController: MovieController {
    
    @IBOutlet weak var field: UITextField!
    
    
    @IBAction func done(_ sender: Any) {
        guard field.text != nil
            else { return}
  
  //      weak var delegate: MovieTableViewCell?
        
        
        //     IBAction func --like button  -- toggleAppreciation(_ sender: Any) {
        //        delegate?.tappedLikedButton(on: self)
        
        
        
        
//        @objc
//        func addEntry() {
//            if let text = field.text, !text.isEmpty { //see if text is there
//                let entry = Entry(title: text, note: textview.text, done: done.isOn) // if its there it adds it
//                Model.shared.items.append(entry) // this saves it
//            }
//            navigationController?.popViewController(animated: true) //if the save it it doesnt let them safe again unless modified
//        }
//
//        @objc
//        func saveEntry() {
//
//            guard let indexPath = indexPath else { //make sure text is there and not empty
//                fatalError("Failed to unwrap guaranteed indexPath")
//            }
//
//            if let text = field.text, !text.isEmpty {
//                let entry = Entry(title: text, note: textview.text, done: done.isOn) // creates new entry replaces old
//                Model.shared.items[indexPath.row] = entry
//            }
//
//            navigationController?.popViewController(animated: true) //when you save you want to be done
//        }
//
//        override func viewWillAppear(_ animated: Bool) {
//            if let indexPath = indexPath { // optional unwrapping
//                assert(indexPath.row < Model.shared.items.count, "Out of range indexPath") //crashes if condition is false
//
//                let entry = Model.shared.items[indexPath.row] //
//                field.text = entry.title // puts title in text
//                textview.text = entry.note // puts note in text
//                done.isOn = entry.done
//            }
//
//            //makes add or save button work
//            let barButton = UIBarButtonItem(title: nil, style: .plain, target: self, action: nil)
//            navigationItem.rightBarButtonItem = barButton
//            switch indexPath {
//            case nil: // new record
//                barButton.title = "Add"
//                barButton.action = #selector(addEntry) // wraps up add entry  function use as var
//            default: // modify record
//                barButton.title = "Save"
//                barButton.action = #selector(saveEntry)
//            }
//
//
//
//

        }
    }
    
    
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()

        // Do any additional setup after loading the view.
//    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


