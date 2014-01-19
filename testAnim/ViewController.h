//
//  ViewController.h
//  testAnim
//
//  Created by Janna Hakobyan on 25.12.13.
//  Copyright (c) 2013 Janna Hakobyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIGestureRecognizerDelegate>

@property (nonatomic, weak) IBOutlet UIView *mainView;
@property (nonatomic, weak) IBOutlet UIScrollView *scrollImages;
@property (nonatomic, weak) IBOutlet UIScrollView *scrollViewNews;
@property (nonatomic, weak) IBOutlet UIScrollView *scrollViewHeader;

@property (nonatomic, weak) IBOutlet UILabel *news1;
@property (nonatomic, weak) IBOutlet UILabel *news2;
@property (nonatomic, weak) IBOutlet UIImageView *newsImg;
@property (nonatomic, weak) IBOutlet UIView *topNewsView;

@end
