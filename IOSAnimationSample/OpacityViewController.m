//
//  OpacityViewController.m
//  IOSAnimationSample
//
//  Created by 吴浠 on 16/2/2.
//  Copyright © 2016年 吴浠. All rights reserved.
//

#import "OpacityViewController.h"

@interface OpacityViewController ()

@property (nonatomic)UIView *cubic;
@end

@implementation OpacityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _cubic = [[UIView alloc] initWithFrame:self.view.bounds];
    _cubic.backgroundColor = [UIColor redColor];
    //大小
    CGRect rect = _cubic.frame;
    rect.size.width /= 2;
    rect.size.height /= 2;
    _cubic.frame = rect;
    //中心
    CGPoint center = self.view.center;
    _cubic.center = center;
    [self.view addSubview:_cubic];
    //[self test];
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
        _cubic.alpha = 0.1;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 animations:^{
            _cubic.alpha = 1;
        }];
    }];
}
/*
- (void)test
{
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(10, 70, 200, 50);
    label.backgroundColor = [UIColor yellowColor];
    //文字
    label.text = @"Hello iOS fdahfdhfjhjhfj hfjahdfjah  hfajhdfjsdh";
    //字体居中
    label.textAlignment = NSTextAlignmentCenter;
    //设置label字体颜色
    label.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
    //设置字体大小，加粗，倾斜
    //注意此处后面设置的会把前面设置的覆盖掉，例如此处最后设置的斜体，前面的加粗和字体大小就会失效
    //倾斜对中文无效
    label.font = [UIFont systemFontOfSize:20];
    label.font = [UIFont boldSystemFontOfSize:20];
    label.font = [UIFont italicSystemFontOfSize:20];
    //打印当前字体库中有哪些字体
    for (NSString * textName in [UIFont familyNames]) {
        NSLog(@"%@", textName);
    }
    //使用字体库中的某个字体,此处会把前面的倾斜顶掉
    label.font = [UIFont fontWithName:@"Heiti TC" size:20];
    
    //设置文字阴影颜色和偏移
    label.shadowColor = [UIColor redColor];
    //默认的偏移是CGSizeMake(0, -1)
    label.shadowOffset = CGSizeMake(2, 2);
    
    //label换行首先要有足够大的label，设置换行模式,此处按照字母换行对中文无效
    label.lineBreakMode = NSLineBreakByCharWrapping;
    //label行数（使用-1或者0代表不限制函数，有多少行显示多少行）
    label.numberOfLines = 10;
    
    //根据字符串大小计算label大小,提供的dictionary包含font，fontsize，最大的size
    //此处没有详细写
    [self.view addSubview:label];
}
*/
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
