//
//  TFQViewController.m
//  TFQImageScollView
//
//  Created by tanfq1989 on 03/20/2015.
//  Copyright (c) 2014 tanfq1989. All rights reserved.
//

#import "TFQViewController.h"
#import <TFQImageScollView/TFQImageScrollView.h>
@interface TFQViewController ()<TFQImageScrollViewDatasource>

@end

@implementation TFQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    TFQImageScrollView *imageScrollView=[[TFQImageScrollView alloc]initWithFrame:CGRectMake(0, 150, self.view.frame.size.width, 240)];
    [self.view addSubview:imageScrollView];
    imageScrollView.imageSize=imageScrollView.frame.size;
    imageScrollView.imageScrollViewDatasource=self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSString *)imageScrollView:(TFQImageScrollView *)imageScrollView imageUrlAtIndex:(NSInteger)index{
    return @"http://f.hiphotos.baidu.com/image/pic/item/42166d224f4a20a4e3569a2c92529822730ed095.jpg";
}
-(NSInteger)numberOfImageScrollView:(TFQImageScrollView *)imageScrollView{
    return 4;
}
@end
