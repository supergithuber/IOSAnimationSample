//
//  SpringViewController.m
//  IOSAnimationSample
//
//  Created by 吴浠 on 16/3/17.
//  Copyright © 2016年 吴浠. All rights reserved.
//

#import "SpringViewController.h"

@interface SpringViewController ()
@property (weak, nonatomic) IBOutlet UIView *firstCubic;
@property (weak, nonatomic) IBOutlet UIView *secondCubic;
@property (weak, nonatomic) IBOutlet UIView *ThirdCubic;

@end

@implementation SpringViewController

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
    [UIView animateWithDuration:1 animations:^{
        CGPoint center = _firstCubic.center;
        center.x = self.view.bounds.size.width - center.x;
        _firstCubic.center = center;
    }];
    //second
    //damping的值为0到1
    [UIView animateWithDuration:5 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:0 options:UIViewAnimationOptionCurveLinear animations:^{
        CGPoint center = _secondCubic.center;
        center.x = self.view.bounds.size.width - center.x;
        _secondCubic.center = center;
    } completion:^(BOOL finished) {
        NSLog(@"finished");
    }];
    //第三个只有初始速度和第二个不一样
    [UIView animateWithDuration:5 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:10 options:UIViewAnimationOptionCurveLinear animations:^{
        CGPoint center = _ThirdCubic.center;
        center.x = self.view.bounds.size.width - center.x;
        _ThirdCubic.center = center;
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
