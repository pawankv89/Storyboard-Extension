//
//  UIStoryboard+Extensions.swift
//  Storyboard Extension
//
//  Created by Pawan kumar on 08/05/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//


import UIKit

extension UIStoryboard {
  class func main() -> UIStoryboard {
    return UIStoryboard(name: "Main", bundle: nil)
  }

  class func storyboardViewController<T>(_ viewController: T.Type) -> T where T: UIViewController {
    return UIStoryboard.main().instantiateViewController(withIdentifier: String(describing: viewController)) as! T
  }
}
