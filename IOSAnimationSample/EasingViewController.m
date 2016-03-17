//
//  EasingViewController.m
//  IOSAnimationSample
//
//  Created by 吴浠 on 16/3/17.
//  Copyright © 2016年 吴浠. All rights reserved.
//

#import "EasingViewController.h"

@interface EasingViewController ()
@property (weak, nonatomic) IBOutlet UIView *firstSquare;
@property (weak, nonatomic) IBOutlet UIView *secondSquare;
@property (weak, nonatomic) IBOutlet UIView *thirdSquare;
@property (weak, nonatomic) IBOutlet UIView *forthSquare;

@end

@implementation EasingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    //first cubic is linear
    [UIView animateWithDuration:1 animations:^{
        CGPoint center = _firstSquare.center;
        center.x = self.view.bounds.size.width - center.x;
        _firstSquare.center = center;
    }];
    //second cubic:EaseIn
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        CGPoint center = _secondSquare.center;
        center.x = self.view.bounds.size.width - center.x;
        _secondSquare.center = center;
    } completion:nil];
    //third cubic:EaseOut
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        CGPoint center = _thirdSquare.center;
        center.x = self.view.bounds.size.width - center.x;
        _thirdSquare.center = center;
    } completion:nil];
    //forth cubic:EaseInOut
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        CGPoint center = _forthSquare.center;
        center.x = self.view.bounds.size.width - center.x;
        _forthSquare.center = center;
    } completion:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
