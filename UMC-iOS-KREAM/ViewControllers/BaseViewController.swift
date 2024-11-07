import UIKit

class BaseViewController: UITabBarController {
    private let homeViewController = HomeViewController()
    private let styleViewController = StyleViewController()
    private let shopViewController = ShopViewController()
    private let savedViewController = SavedViewController()
    private let myPageViewController = UINavigationController(rootViewController: MyPageViewController())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        tabBar.isTranslucent = false
        tabBar.barTintColor = .white
        tabBar.backgroundColor = .white
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .gray
        
        homeViewController.tabBarItem = UITabBarItem(title: "HOME", image: UIImage(named: "icon_home_fill"), tag: 0)
        styleViewController.tabBarItem = UITabBarItem(title: "STYLE", image: UIImage(named: "icon_style_fill"), tag: 1)
        shopViewController.tabBarItem = UITabBarItem(title: "SHOP", image: UIImage(named: "icon_shop_fill"), tag: 2)
        savedViewController.tabBarItem = UITabBarItem(title: "SAVED", image: UIImage(named: "icon_saved_none"), tag: 3)
        myPageViewController.tabBarItem = UITabBarItem(title: "MY PAGE", image: UIImage(named: "icon_my_none"), tag: 4)
        
        self.viewControllers = [homeViewController, styleViewController, shopViewController, savedViewController, myPageViewController]
    }
}
