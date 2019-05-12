//
//  FirstViewController.swift
//  Storyboard Extension
//
//  Created by Pawan kumar on 08/05/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    lazy var navigationButton: UIButton = {
        
        let btn = UIButton()
        btn.frame = CGRect.init(x: 0, y: 100, width: 300, height: 50)
        btn.center = CGPoint.init(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
        btn.backgroundColor = .blue
        btn.setTitle("Move To Second Screen", for: .normal)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "First"
        
        self.view.addSubview(navigationButton)
        navigationButton.addTarget(self, action: #selector(self.moveToNextScreen), for: .touchUpInside)
    }
    
    @objc func moveToNextScreen(sender: UIButton) -> () {
        
        //Storyboard With Extensions
        let viewController = UIStoryboard.storyboardViewController(SecondViewController.self)
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
}
