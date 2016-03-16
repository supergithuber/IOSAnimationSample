//
//  RepeatViewController.m
//  IOSAnimationSample
//
//  Created by 吴浠 on 16/3/16.
//  Copyright © 2016年 吴浠. All rights reserved.
//

#import "RepeatViewController.h"

@interface RepeatViewController ()
@property (weak, nonatomic) IBOutlet UIView *greenSquare;
@property (weak, nonatomic) IBOutlet UIView *redSquare;

@end

@implementation RepeatViewController

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
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionRepeat animations:^{
        CGPoint center = _greenSquare.center;
        center.x = self.view.bounds.size.width - center.x;
        _greenSquare.center = center;
    } completion:nil];
    
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse animations:^{
        CGPoint center = _redSquare.center;
        center.x = self.view.bounds.size.width - center.x;
        _redSquare.center = center;
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
