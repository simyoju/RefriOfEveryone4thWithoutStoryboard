//
//  RFTabBarController.swift
//  RefriOfEveryone4thWithoutStoryboard
//
//  Created by simyo on 2021/08/22.
//

import UIKit

class RFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        UITabBar.appearance().tintColor = UIColor(named: "MainColor")
        UITabBar.appearance().barTintColor = .white
        viewControllers = [createHomeNC(), createCommunityNC(), createAddItemNC(), createNoticeNC(), createMyPageNC()]
    }
    
    private func createHomeNC() -> UINavigationController {
        let homeVC = HomeVC()
        homeVC.tabBarItem = UITabBarItem(title: "home", image: UIImage(systemName: "house"), tag: 0)
        return UINavigationController(rootViewController: homeVC)
    }
    
    private func createCommunityNC() -> UINavigationController {
        let communityVC = CommunityVC()
        communityVC.title = "community"
        communityVC.tabBarItem = UITabBarItem(title: "community", image: UIImage(systemName: "network"), tag: 1)
        return UINavigationController(rootViewController: communityVC)
    }
    
    private func createAddItemNC() -> UINavigationController {
        let addItemVC = AddItemVC()
        addItemVC.tabBarItem = UITabBarItem(title: "addItem",image: UIImage(systemName: "cart.badge.plus"), tag: 2)
        return UINavigationController(rootViewController: addItemVC)
    }
    
    private func createNoticeNC() -> UINavigationController {
        let noticeVC = NoticeVC()
        noticeVC.tabBarItem = UITabBarItem(title: "notice", image: UIImage(systemName: "bell"), tag: 3)
        return UINavigationController(rootViewController: noticeVC)
    }
    
    private func createMyPageNC() -> UINavigationController {
        let myPageVC = MyPageVC()
        myPageVC.title = "myPage"
        myPageVC.tabBarItem = UITabBarItem(title: "myPage", image: UIImage(systemName: "person"), tag: 4)
        return UINavigationController(rootViewController: myPageVC)
    }
    

    
}
