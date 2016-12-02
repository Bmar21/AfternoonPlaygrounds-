//
//  ViewController.swift
//  FirstIOSApp
//
//  Created by Marlor, Brandon on 9/26/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit
import PlaygroundSupport

class ViewController: UIViewController
{
    @IBOutlet private weak var Button: UIButton!
    @IBOutlet private weak var Label: UILabel!
    @IBOutlet weak var appBackground: UIView!
    
    override func loadView()
    {
        //UI
        
        let view = UIView()
        view.backgroundColor = .white
        
        let innerView = UIView()
        innerView.backgroundColor = .yellow
        view.addSubview(innerView)
        
        let shadowView = UIView()
        shadowView.layer.maskToBounds = false
        shadowView.layer.shadowOffset = CGSize(width: 1, height: 1)
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowRadius = 4
        shadowView.layer.shadowOpacity = 0.8
        shadowView.layer.cornerRadius = 5
        shadowView.backgroundColor = .red
        view.addSubview(shadowView)
        
        //Layout
        
        shadowView.translatesAutoresizingMaskIntoConstraints = false
        innerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            innerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            innerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            innerView.widthAnchor.constraint(equalToConstant: 80),
            innerView.heightAnchor.constraint(equalToConstant: 80)
        ])
        
        self.view = view
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClick(sender: UIButton) -> Void
    {
        Label.text = "You clicked the button!"
        Label.textColor = UIColor.redColor()
        appBackground.backgroundColor = makeRandonColor()
    }
    
    private func makeRandonColor() -> UIColor
    {
        let randomColor : UIColor
        
        //Color in Swift is a percentage - from 0-1 inclusive 
        //Of type CGFloat for all components inclusive 
        
        let redColor :CGFloat = CGFloat(drand48())
        let greenColor :CGFloat = CGFloat(Double(arc4random_uniform(256))/255.00)
        let blueColor :CGFloat = CGFloat(drand48())
        let alphaChannel :CGFloat = 1.0
        
        randomColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: alphaChannel)
        
        return randomColor
    }
}

PlaygroundPage.currnet.liveView = ViewController()