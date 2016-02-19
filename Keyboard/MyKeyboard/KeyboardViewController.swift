//
//  KeyboardViewController.swift
//  MyKeyboard
//
//  Created by Sai on 2/17/16.
//  Copyright © 2016 Sai. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    
    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var happyObamaButton: UIButton!
    @IBOutlet var unimpressedObamaButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var deleteButton: UIButton!

    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadKeyboard()
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
    
    func sayKillingIt() {
        [self.textDocumentProxy.insertText("killing it.")];
    }
    
    func sayNotBad() {
        [self.textDocumentProxy.insertText("not bad...")];
    }
    
    func newLine() {
        [self.textDocumentProxy.insertText("\n")];
    }
    
    func deleteChar() {
        [self.textDocumentProxy.deleteBackward()];
    }
    
    func loadKeyboard() {
        var keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.addSubview(keyboardView)
        keyboardView.frame = view.frame
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        happyObamaButton.addTarget(self, action: "sayKillingIt", forControlEvents: .TouchUpInside)
        unimpressedObamaButton.addTarget(self, action: "sayNotBad", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "newLine", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "deleteChar", forControlEvents: .TouchUpInside)
        
    }

}
