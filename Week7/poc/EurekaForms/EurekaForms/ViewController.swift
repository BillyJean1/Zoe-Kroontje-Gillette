//
//  ViewController.swift
//  EurekaForms
//
//  Created by mac on 08-01-18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit
import Eureka
class ViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adds validation to the form where needed
        var emailRules = RuleSet<String>()
        emailRules.add(rule: RuleRequired())
        emailRules.add(rule: RuleEmail())
        
        form +++ Section("Section1")
            <<< TextRow("nameRowTag"){ row in
                row.title = "Name"
                row.placeholder = "Enter your full name"
            }
            <<< TextRow("emailRowTag"){ row in
                row.title = "Email"
                row.placeholder = "Enter your email"
                row.add(ruleSet: emailRules)
                row.validationOptions = .validatesOnChangeAfterBlurred
            }
            <<< PhoneRow("phoneRowTag"){
                $0.title = "Phone Row"
                $0.value = "06123456789"
                $0.disabled = true
                $0.placeholder = "And numbers here"
            }
            +++ Section("Section2")
            <<< DateRow("dateRowTag"){
                $0.title = "Date Row"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
            }
            <<< SwitchRow("switchRowTag"){
                $0.title = "Show message"
            }
            <<< LabelRow(){
                $0.hidden = Condition.function(["switchRowTag"], { form in
                    return !((form.rowBy(tag: "switchRowTag") as? SwitchRow)?.value ?? false)
                })
                $0.title = "Switch is on!"
            }
            <<< ActionSheetRow<String>() {
                $0.title = "ActionSheetRow"
                $0.selectorTitle = "Pick a number"
                $0.options = ["One","Two","Three"]
                $0.value = "Two"    // initially selected
            }
            +++ MultivaluedSection(multivaluedOptions: [.Reorder, .Insert, .Delete],
                               header: "Multivalued TextField",
                               footer: ".Insert adds a 'Add Item' (Add New Tag) button row as last cell.") {
                                $0.addButtonProvider = { section in
                                    return ButtonRow(){
                                        $0.title = "Add New Tag"
                                    }
                                }
                                $0.multivaluedRowToInsertAt = { index in
                                    return NameRow() {
                                        $0.placeholder = "Tag Name"
                                    }
                                }
                                $0 <<< NameRow() {
                                    $0.placeholder = "Tag Name"
                                }
        }
            +++ Section()
            <<< ButtonRow() { (row: ButtonRow) -> Void in
                row.title = "Save"
                row.cell.backgroundColor = UIColor.blue
                row.cell.tintColor = UIColor.white
                }
                .onCellSelection { [weak self] (cell, row) in
                    if row.section?.form?.validate().count == 0{
                        let valuesDictionary = self?.form.values()
                        self?.submitForm(values: valuesDictionary!)
                    }
        }
        
        animateScroll = true
        rowKeyboardSpacing = 20
    }
    
    // Won't work if not all requirements are met
    func submitForm (values: Dictionary<String, Any>){
        print(values)
    }


}

