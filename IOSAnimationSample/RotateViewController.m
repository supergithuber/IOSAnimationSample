//
//  RotateViewController.m
//  IOSAnimationSample
//
//  Created by 吴浠 on 16/2/2.
//  Copyright © 2016年 吴浠. All rights reserved.
//

#import "RotateViewController.h"

@interface RotateViewController ()
@property (nonatomic) IBOutlet UIImageView *plate;

@end

@implementation RotateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)spin
{
    //option参数很重要，保证连贯性
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        //如果是2*M_PI是不会转的
        //在原先的基础上转
        _plate.transform = CGAffineTransformRotate(_plate.transform, M_PI);
    } completion:^(BOOL finished) {
        [self spin];
    }];
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self spin];
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
