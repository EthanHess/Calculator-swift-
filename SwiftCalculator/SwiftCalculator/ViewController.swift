//
//  ViewController.swift
//  SwiftCalculator
//
//  Created by Ethan Hess on 5/13/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

import UIKit

var topTextField = UITextField()
var bottomTextField = UITextField()
var addButton = UIButton()
var subtractButton = UIButton()
var divideButton = UIButton()
var multiplyButton = UIButton()
var totalLabel = UILabel()
var clearButton = UIButton()

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Calculator"
        
        self.view.backgroundColor = UIColor.grayColor()
        
        self.setUpViews()
        
    }
    
    func setUpViews() {
        
        
        
        topTextField = UITextField.new()
        topTextField.frame = CGRectMake(50, 100, self.view.frame.size.width - 100, 60)
        topTextField.backgroundColor = UIColor.whiteColor()
        topTextField.textAlignment = NSTextAlignment.Center
        topTextField.borderStyle = UITextBorderStyle.RoundedRect
        topTextField.placeholder = "Enter Number"
        topTextField.font = UIFont(name: "Chalkduster", size: 16)
        topTextField.delegate = self
        self.view.addSubview(topTextField)
        
        addButton = UIButton.new()
        addButton.frame = CGRectMake(50, 185, 50, 50)
        var cornerRadius: CGFloat = addButton.frame.size.height / 2
        addButton.layer.cornerRadius = cornerRadius;
        addButton.setTitle("+", forState: UIControlState.Normal)
        addButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        addButton.backgroundColor = UIColor.blueColor()
        addButton.addTarget(self, action: "add", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(addButton)
        
        subtractButton = UIButton.new()
        subtractButton.frame = CGRectMake(125, 185, 50, 50)
        subtractButton.layer.cornerRadius = cornerRadius
        subtractButton.setTitle("-", forState: UIControlState.Normal)
        subtractButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        subtractButton.backgroundColor = UIColor.blueColor()
        subtractButton.addTarget(self, action: "subtract", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(subtractButton)
        
        divideButton = UIButton.new()
        divideButton.frame = CGRectMake(200, 185, 50, 50)
        divideButton.layer.cornerRadius = cornerRadius
        divideButton.setTitle("/", forState: UIControlState.Normal)
        divideButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        divideButton.backgroundColor = UIColor.blueColor()
        divideButton.addTarget(self, action: "divide", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(divideButton)
        
        multiplyButton = UIButton.new()
        multiplyButton.frame = CGRectMake(275, 185, 50, 50)
        multiplyButton.layer.cornerRadius = cornerRadius
        multiplyButton.setTitle("x", forState: UIControlState.Normal)
        multiplyButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        multiplyButton.backgroundColor = UIColor.blueColor()
        multiplyButton.addTarget(self, action: "multiply", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(multiplyButton)
        
        bottomTextField = UITextField.new()
        bottomTextField.frame = CGRectMake(50, 260, self.view.frame.size.width - 100, 60)
        bottomTextField.backgroundColor = UIColor.whiteColor()
        bottomTextField.textAlignment = NSTextAlignment.Center
        bottomTextField.borderStyle = UITextBorderStyle.RoundedRect
        bottomTextField.placeholder = "Enter Number"
        bottomTextField.font = UIFont(name: "Chalkduster", size: 16)
        bottomTextField.delegate = self
        self.view.addSubview(bottomTextField)
        
        totalLabel = UILabel.new()
        totalLabel.frame = CGRectMake(50, 350, 150, 50)
        totalLabel.backgroundColor = UIColor.whiteColor()
        totalLabel.textColor = UIColor.blackColor()
        totalLabel.textAlignment = NSTextAlignment.Center
        totalLabel.font = UIFont(name: "Chalkduster", size: 16)
        self.view.addSubview(totalLabel)
        
        clearButton = UIButton.new()
        clearButton.frame = CGRectMake(225, 350, 100, 50)
        clearButton.layer.cornerRadius = cornerRadius
        clearButton.setTitle(" Clear ", forState: UIControlState.Normal)
        clearButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        clearButton.backgroundColor = UIColor.redColor()
        clearButton.addTarget(self, action: "clear", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(clearButton)

    }
    
    func add() {
        
        if (topTextField.text == "") {
            
            self.alertView()
            
            return
            
        }
        
        if (bottomTextField.text == "") {
            
            self.alertView()
            
            return
        }
        
        var firstText = topTextField.text.toInt()!
        var secondText = bottomTextField.text.toInt()!
        var result = 0
        
        result = firstText + secondText
        
        totalLabel.text = "\(result)"
        
    }
    
    func subtract() {
        
        if (topTextField.text == "") {
            
            self.alertView()
            
            return
            
        }
        
        if (bottomTextField.text == "") {
            
            self.alertView()
            
            return
        }
        
        var firstText = topTextField.text.toInt()!
        var secondText = bottomTextField.text.toInt()!
        var result = 0
        
        result = firstText - secondText
        
        totalLabel.text = "\(result)"
        
    }
    
    func divide() {
        
        if (topTextField.text == "") {
            
            self.alertView()
            
            return
            
        }
        
        if (bottomTextField.text == "") {
            
            self.alertView()
            
            return
        }
        
        var firstText = topTextField.text.toInt()!
        var secondText = bottomTextField.text.toInt()!
        var result = 0
        
        result = firstText / secondText
        
        totalLabel.text = "\(result)"
        
    }
    
    func multiply() {
        
        if (topTextField.text == "") {
            
            self.alertView()
            
            return
            
        }
        
        if (bottomTextField.text == "") {
            
            self.alertView()
            
            return
        }
        
        var firstText = topTextField.text.toInt()!
        var secondText = bottomTextField.text.toInt()!
        var result = 0
        
        result = firstText * secondText
        
        totalLabel.text = "\(result)"
        
    }
    
    func clear() {
        
        topTextField.text = ""
        bottomTextField.text = ""
        totalLabel.text = ""
        
    }
    
    func alertView() {
        
        var alert = UIAlertController(title: "Please enter a numerical value in both fields", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Cancel, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        topTextField.resignFirstResponder()
        
        bottomTextField.resignFirstResponder()
        
        return true
    }
    
    
//    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
//        
//        var PositiveINT = NSArray("1","2","3","4","5","6","7","8","9")
//        
//        
//        
//        return true
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

