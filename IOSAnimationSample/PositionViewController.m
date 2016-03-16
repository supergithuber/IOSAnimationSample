//
//  PositionViewController.m
//  IOSAnimationSample
//
//  Created by 吴浠 on 16/2/1.
//  Copyright © 2016年 吴浠. All rights reserved.
//

#import "PositionViewController.h"

@interface PositionViewController ()

@property (nonatomic) IBOutlet UIView *pinkSquare;
@property (weak, nonatomic) IBOutlet UIView *blueSquare;
@property (nonatomic)UIView *cubic;

@end

@implementation PositionViewController

- (void)viewDidLoad {
    NSLog(@"viewDidLoad");
    [super viewDidLoad];
    //代码创建一个绿色的view
    _cubic = [[UIView alloc] initWithFrame:CGRectMake(0, 200, 20, 20)];
    _cubic.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_cubic];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
    [UIView animateWithDuration:1 animations:^{
        //粉色方块
        CGPoint pointA =  _pinkSquare.center;
        pointA.x = self.view.bounds.size.width - _pinkSquare.center.x;
        _pinkSquare.center = pointA;
    }];
    [UIView animateWithDuration:1 delay:0.5 options:nil animations:^{
        //蓝色方块
        CGPoint pointB =  _blueSquare.center;
        pointB.y = self.view.bounds.size.height - _blueSquare.center.y;
        _blueSquare.center = pointB;
    } completion:nil];
    [UIView animateWithDuration:1 delay:1 options:nil animations:^{
        //代码创建的绿色方块
        CGPoint pointC = _cubic.center;
        pointC.x = self.view.bounds.size.width - _cubic.center.x;
        pointC.y = self.view.bounds.size.height - _cubic.center.y;
        _cubic.center = pointC;
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
