//
//  ViewController.swift
//  TimerScroll
//
//  Created by admin on 15-3-17.
//  Copyright (c) 2015年 JohnSon. All rights reserved.
//

import UIKit
let kIMGCOUNT = 3
let KScreenWidth = UIScreen.mainScreen().bounds.width
let KScreenHeight = UIScreen.mainScreen().bounds.height
class ViewController: UIViewController,TFQImageScrollViewDatasource,ImageScrollViewDelegate {
    
    var scrollView:ImageScrollView!
    
    private var imageArray:[[String:AnyObject]]!=[]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scrollView = ImageScrollView(frame: CGRectMake(0, 0, KScreenWidth, 400))
        scrollView!.imageScrollViewDatasource = self
        scrollView!.imageScrollViewDelegate=self
   
        self.view.addSubview(scrollView)

        scrollView.timerOn()
        
    }
    override func viewDidLayoutSubviews() {
        scrollView.imageSize=CGSize(width: scrollView.frame.width, height: scrollView.frame.height)
        
        // 数据请求完成
        //        if imageArray.count != 0{
        //            scrollView.reloadImages()
        //            imageScrollViewDidEndScrolltoIndex(0)
        //        pageControl?.currentPage = 0
        //        }
    }
    func numberOfImageScrollView(imageScrollView: TFQImageScrollView!) -> Int {
        return 3

    }

    func imageScrollView(imageScrollView: TFQImageScrollView!, imageUrlAtIndex index: Int) -> String! {
        return "http://f.hiphotos.baidu.com/image/pic/item/42166d224f4a20a4e3569a2c92529822730ed095.jpg"

    }

 
    // 点击某张图片跳转相应的控制器
    func imageScrollViewDidSelectedAtIndex(index: Int)
    {
        
    }
    //当用户准备拖拽的时候，关闭定时器
    func scrollViewWillBeginDragging(scrollView: UIScrollView)
    {
        self.scrollView.timerOff()
    }
    
    //当用户停止拖拽的时候，添加一个定时器
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
    {
        self.scrollView.timerOn()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

