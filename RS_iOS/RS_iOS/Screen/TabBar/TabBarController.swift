//
//  TabBarController.swift
//  RS_iOS
//
//  Created by 황찬미 on 2023/05/08.
//

import UIKit

final class TabBarController: UITabBarController {
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setRootTabBar()
    }
}

private extension TabBarController {
    func makeTabBar(viewController: UIViewController,
                    title: String,
                    tabBarImg: UIImage,
                    tabBarSelectedImg: UIImage,
                    renderingMode: UIImage.RenderingMode) -> UIViewController {
        
        let tab = UINavigationController(rootViewController: viewController)
        tab.isNavigationBarHidden = true
        tab.tabBarItem = UITabBarItem(title: title,
                                      image: tabBarImg.withRenderingMode(renderingMode),
                                      selectedImage: tabBarSelectedImg.withRenderingMode(renderingMode))
        return tab
    }
    
    func setTabBar() {
        let home = makeTabBar(viewController: HomeViewController(),
                                   title: "홈",
                                   tabBarImg: UIImage(),
                                   tabBarSelectedImg: UIImage(),
                                   renderingMode: .alwaysTemplate)
        let calendar = makeTabBar(viewController: CalendarViewController(),
                                       title: "캘린더",
                                       tabBarImg: UIImage(),
                                       tabBarSelectedImg: UIImage(),
                                       renderingMode: .alwaysTemplate)
        let chatting = makeTabBar(viewController: ChattingViewController(),
                                     title: "채팅",
                                     tabBarImg: UIImage(),
                                     tabBarSelectedImg: UIImage(),
                                     renderingMode: .alwaysTemplate)
        let community = makeTabBar(viewController: CommunityViewController(),
                                       title: "게시판",
                                       tabBarImg: UIImage(),
                                       tabBarSelectedImg: UIImage(),
                                       renderingMode: .alwaysTemplate)
        let mypage = makeTabBar(viewController: MyPageViewController(),
                                     title: "마이페이지",
                                     tabBarImg: UIImage(),
                                     tabBarSelectedImg: UIImage(),
                                     renderingMode: .alwaysTemplate)
        
        let tabs = [home, calendar, chatting, community, mypage]
        
        self.setViewControllers(tabs, animated: false)
        
        tabBar.backgroundColor = .white
        tabBar.tintColor = .black
    }
    
    func setRootTabBar() {
        self.selectedIndex = 0
    }
}
