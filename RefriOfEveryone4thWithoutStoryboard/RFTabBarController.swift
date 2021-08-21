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
        UITabBar.appearance().tintColor = UIColor(named: "MainColor")
        viewControllers = [createHomeNC(), createCommunityNC(), createAddItemNC(), createNoticeNC(), createMyPageNC()]
    }
    
    private func createHomeNC() -> UINavigationController {
        let homeVC = HomeVC()
        homeVC.title = "home"
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        return UINavigationController(rootViewController: homeVC)
    }
    
    private func createCommunityNC() -> UINavigationController {
        let communityVC = CommunityVC()
        communityVC.title = "community"
        communityVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        return UINavigationController(rootViewController: communityVC)
    }
    
    private func createAddItemNC() -> UINavigationController {
        let addItemVC = AddItemVC()
        addItemVC.title = "addItem"
        addItemVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        return UINavigationController(rootViewController: addItemVC)
    }
    
    private func createNoticeNC() -> UINavigationController {
        let noticeVC = NoticeVC()
        noticeVC.title = "notice"
        noticeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 3)
        return UINavigationController(rootViewController: noticeVC)
    }
    
    private func createMyPageNC() -> UINavigationController {
        let myPageVC = MyPageVC()
        myPageVC.title = "myPage"
        myPageVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 4)
        return UINavigationController(rootViewController: myPageVC)
    }
    
    
}
