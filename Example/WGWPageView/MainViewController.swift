//
//  ViewController.swift
//  WGWPager
//
//  Created by Matija Kruljac on 6/1/17.
//  Copyright © 2017 Matija Kruljac. All rights reserved.
//

import UIKit
import WGWPageView

class MainViewController: UIViewController {
    
    @IBOutlet weak var wgwPagerView: WGWPagerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let wgwPagerView = WGWPagerView(with:
//            CGRect(
//                x: 0,
//                y: 100,
//                width: view.frame.size.width,
//                height: view.frame.size.height - 100))
        
        wgwPagerView.setupPagerWithHeader(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal,
            options: [:],
            headerHeight: 60)
        
        let wgwPagerHeaderTitleColors = WGWPagerHeaderTitleColors(
            withSelectedTitleColor: .blue,
            withUnselectedTitleColor: .black)
        
        wgwPagerView.setupPagerHeder(
            titles: ["ViewController 1", "ViewController 2", "ViewController 3", "ViewController 4", "ViewController 5"],
            with: .boldSystemFont(ofSize: 15),
            andWith: wgwPagerHeaderTitleColors)
        
        wgwPagerView.dataSource = generateViewControllers()
        
        view.addSubview(wgwPagerView)
    }
    
    private func generateViewControllers() -> [UIViewController] {
        var viewControllers = [UIViewController]()
        
        guard let storyboard = storyboard else { return [] }
        let firstViewController = storyboard.instantiateViewController(withIdentifier: "FirstViewController")
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        let thirdViewController = storyboard.instantiateViewController(withIdentifier: "ThirdViewController")
        let fourthViewController = storyboard.instantiateViewController(withIdentifier: "FourthViewController")
        let fifthViewController = storyboard.instantiateViewController(withIdentifier: "FifthViewController")
        
        viewControllers.append(firstViewController)
        viewControllers.append(secondViewController)
        viewControllers.append(thirdViewController)
        viewControllers.append(fourthViewController)
        viewControllers.append(fifthViewController)
        
        return viewControllers
    }
}
