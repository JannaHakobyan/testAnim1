//
//  ViewController.m
//  testAnim
//
//  Created by Janna Hakobyan on 25.12.13.
//  Copyright (c) 2013 Janna Hakobyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scrollViewHeader.bounces = NO;
    self.scrollImages.contentSize = CGSizeMake(960, -1);
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleImageTap:)];
   tap.numberOfTapsRequired = 1;
    tap.delegate = self;
    self.newsImg.userInteractionEnabled = YES;
    [self.newsImg addGestureRecognizer:tap];
}

- (void)handleImageTap:(UIGestureRecognizer *)gestureRecognizer
{
    self.scrollViewNews.contentSize = CGSizeMake(-1, 1440);
    [UIView beginAnimations:@"MoveView" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.6f];
    self.mainView.frame = CGRectMake(self.mainView.frame.origin.x, -530, self.mainView.frame.size.width, self.mainView.frame.size.height);
    [UIView commitAnimations];
//    [self.scrollView setContentOffset:CGPointMake(0, 950) animated:YES];
}

- (void)scrollViewDidScroll:(UIScrollView*)scrollView
{
    float scrollOffset = scrollView.contentOffset.y;
    NSLog(@"%f", scrollOffset);
    if (scrollOffset > -100 && [scrollView isEqual:self.scrollViewNews]) {
        
    }
    
//        [UIView beginAnimations:@"MoveView" context:nil];
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
//        [UIView setAnimationDuration:0.6f];
//        self.mainView.frame = CGRectMake(self.mainView.frame.origin.x, 0, self.mainView.frame.size.width, self.mainView.frame.size.height);
//        [UIView commitAnimations];
//    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
