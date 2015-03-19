//
//  ImageScrollView.swift
//  TimerScroll
//
//  Created by admin on 15-3-17.
//  Copyright (c) 2015年 JohnSon. All rights reserved.
//

import UIKit
// 声明协议
protocol ImageScrollViewDelegate:NSObjectProtocol
{
    func imageScrollViewDidSelectedAtIndex(index:Int)
}

// 代理类
class ImageScrollView: UIView,TFQImageScrollViewDelegate
{
    private var imageScrollView:TFQImageScrollView!
    var imageScrollViewDelegate:ImageScrollViewDelegate!
    var imageScrollViewDatasource:TFQImageScrollViewDatasource!{
        get{
            return imageScrollView.imageScrollViewDatasource
        }
        set{
            imageScrollView.imageScrollViewDatasource=newValue
        }
    }
    var imageSize:CGSize{
        get{
            return imageScrollView.imageSize
        }
        set{
            imageScrollView.imageSize=newValue
        }
            
    }
    private var timer:NSTimer!
    private var pageControl:UIPageControl?
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        imageScrollView=TFQImageScrollView(frame: frame)
        imageScrollView.imageScrollViewDelegate=self

        pageControl = UIPageControl(frame: CGRectMake((KScreenWidth - 10)/2, self.frame.size.height - 20, 10, 10))
        pageControl?.numberOfPages = kIMGCOUNT
        pageControl?.currentPage = 0
        pageControl?.currentPageIndicatorTintColor = UIColor.redColor()
        pageControl?.pageIndicatorTintColor = UIColor.grayColor()
        pageControl?.addTarget(self, action: "changePage:", forControlEvents: UIControlEvents.ValueChanged)
        self.addSubview(imageScrollView)
        self.addSubview(pageControl!)

        
    }
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    func changePage(page:UIPageControl)
    {
        var offsetX = CGFloat(page.currentPage + 1) * self.bounds.width
        // 在此设置滚动视图偏移位置时，需要使用动画效果
        imageScrollView.setContentOffset(CGPointMake(offsetX, 0), animated: true)
    }
    func imgPlay()
    {
         imageScrollView.nextImage()
    }
    
    //每隔1秒播放图片，其实是每隔1秒调用imgPlay方法
    func timerOn()
    {
        timer = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: "imgPlay", userInfo: nil, repeats: true)
        
        //为了防止单线程的弊端，可以保证用户在使用其他控件的时候系统照样可以让定时器运转
        NSRunLoop.currentRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)
    }
    //关闭定时器，并且把定时器设置为nil，这是习惯
    func timerOff()
    {
        timer.invalidate()
        timer=nil
    }

    func imageScrollViewDidEndScrolltoIndex(index: Int)
    {
        pageControl?.currentPage=index
    }
    func imageScrollViewDidSelectedAtIndex(index: Int)
    {
        // 传递代理 让别的类实现
        self.imageScrollViewDelegate.imageScrollViewDidSelectedAtIndex(index)
    }
    
}
