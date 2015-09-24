//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//


// tag: differentiates things
// ex. if 1, then print the thing
// if 0 (delete button), then delete 1 character, you don't want to print the label like with the other buttons

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    @IBOutlet weak var bearButton: UIButton!
    @IBOutlet var bearButton2: UIButton!
    
    @IBOutlet weak var bearButton3: UIButton!
    @IBOutlet weak var bearButton4: UIButton!
    
    @IBOutlet weak var bearButton5: UIButton!
    
    @IBOutlet weak var bearButton6: UIButton!
    
    @IBOutlet weak var bearButton7: UIButton!
    
    @IBOutlet weak var bearButton8: UIButton!
    
    @IBOutlet weak var bearButton9: UIButton!
    
    @IBOutlet weak var bearButton10: UIButton!
    
    @IBOutlet weak var bearButton11: UIButton!
    
    @IBOutlet weak var bearButton12: UIButton!
    
    @IBOutlet weak var spaceBar: UIButton!
//    @IBOutlet weak var deleteBar: UIButton!
    
    @IBOutlet weak var deleteBar: UIButton!
    
    @IBOutlet weak var returnBar: UIButton!
    @IBAction func pressedKey(button: UIButton) {
        // multiple buttons can point to the same action
        if (button.tag == 1) {
            deleteCharacter()
        } else {
        let string = button.titleLabel!.text
        (textDocumentProxy as UIKeyInput).insertText("\(string!)")
        }
    }
    
    
    @IBAction func spaceBar(sender: AnyObject) {
        (textDocumentProxy as UIKeyInput).insertText(" ")
    }
    
    @IBAction func returnBar(sender: AnyObject) {
        (textDocumentProxy as UIKeyInput).insertText("\n")
    }
    
//    @IBAction func deleteChar(sender: AnyObject) {
//        let deleteButton = textDocumentProxy as UITextDocumentProxy
//        
//        deleteButton.deleteBackward()
//    }
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func borderRadius(bear: UIButton) {
        bear.layer.cornerRadius = 5;
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        bearButton.layer.cornerRadius = 5
        borderRadius(bearButton2)
        borderRadius(bearButton3)
        borderRadius(bearButton4)
        borderRadius(bearButton5)
        borderRadius(bearButton6)
        borderRadius(bearButton7)
        borderRadius(bearButton8)
        borderRadius(bearButton9)
        borderRadius(bearButton10)
        borderRadius(bearButton11)
        borderRadius(bearButton12)
        borderRadius(spaceBar)
        borderRadius(deleteBar)
        borderRadius(returnBar)
        deleteBar.addTarget(self, action: "deleteCharacter",
            forControlEvents: .TouchUpInside)
        
        
        /*bearButton.addTarget(self, action: "displayButton",
            forControlEvents: .TouchUpInside)*/
        
    }
    
    func deleteCharacter() {
        print("hi");
        let deleteButton = textDocumentProxy as UITextDocumentProxy
        
        deleteButton.deleteBackward()
    }
//    
//    func displayButton() {
//        print("hi")
//    }


}
