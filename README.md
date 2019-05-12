# Storyboard-Extension

=========

## Storyboard Extension in Swift 5.

### In this demo show Storyboard Extension.

------------
Added Some screens here.

![](https://github.com/pawankv89/Storyboard-Extension/blob/master/images/screen_1.png)
![](https://github.com/pawankv89/Storyboard-Extension/blob/master/images/screen_2.png)
![](https://github.com/pawankv89/Storyboard-Extension/blob/master/images/screen_3.png)




## Usage
------------

#### Storyboard Extension Create UIStoryboard+Extensions.swift

```swift

import UIKit

extension UIStoryboard {
class func main() -> UIStoryboard {
return UIStoryboard(name: "Main", bundle: nil)
}

class func storyboardViewController<T>(_ viewController: T.Type) -> T where T: UIViewController {
return UIStoryboard.main().instantiateViewController(withIdentifier: String(describing: viewController)) as! T
}
}


```

#### Storyboard Extension Used Move to Another Screen

```swift

class HomeViewController: UIViewController {

lazy var navigationButton: UIButton = {

let btn = UIButton()
btn.frame = CGRect.init(x: 0, y: 100, width: 300, height: 50)
btn.center = CGPoint.init(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
btn.backgroundColor = .blue
btn.setTitle("Move To First Screen", for: .normal)
return btn
}()

override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view.

self.title = "Home"

self.view.addSubview(navigationButton)
navigationButton.addTarget(self, action: #selector(self.moveToNextScreen), for: .touchUpInside)
}

@objc func moveToNextScreen(sender: UIButton) -> () {

//Storyboard With Extensions
let viewController = UIStoryboard.storyboardViewController(FirstViewController.self)
self.navigationController?.pushViewController(viewController, animated: true)

}

}


```


## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
