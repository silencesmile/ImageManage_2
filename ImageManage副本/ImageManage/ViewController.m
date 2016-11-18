//
//  ViewController.m
//  ImageManage
//
//  Created by youngstar on 16/11/18.
//  Copyright © 2016年 521Travel. All rights reserved.
//
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    UIImage * image = [UIImage imageNamed:@"picc"];
//    UIImageView * imageView = [[UIImageView alloc]initWithFrame:self.view.bounds]; imageView.image = image;
//    [self.view addSubview:imageView];
//    UIBlurEffect * blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
//    //创建模糊view
//    UIVisualEffectView * effectView = [[UIVisualEffectView alloc]initWithEffect:blur];
//    effectView.frame = CGRectMake(0, 250, imageView.frame.size.width, 200);
//    [imageView addSubview:effectView];
//    //添加显示文本
//    UILabel * lable = [[UILabel alloc]initWithFrame:effectView.bounds];
//    lable.text = @"521Travel.com";
//    lable.textAlignment = NSTextAlignmentCenter;
//    lable.font = [UIFont systemFontOfSize:24];
//    [effectView.contentView addSubview:lable];
    
    
    
    UIImage * image = [UIImage imageNamed:@"picc"];
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:self.view.bounds]; imageView.image = image; [self.view addSubview:imageView];
    UIBlurEffect * blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    //创建模糊view
    UIVisualEffectView * effectView = [[UIVisualEffectView alloc]initWithEffect:blur];
    effectView.frame = CGRectMake(0, 250, imageView.frame.size.width, 200);
    [imageView addSubview:effectView];
    //添加显示文本
    UILabel * lable = [[UILabel alloc]initWithFrame:effectView.bounds];
    lable.text = @"521Travel.com";
    lable.textAlignment = NSTextAlignmentCenter;
    lable.font = [UIFont systemFontOfSize:24];
    //创建模糊子view的UIVisualEffectView
    //1.创建出子模糊view
    UIVisualEffectView * subEffectView = [[UIVisualEffectView alloc]initWithEffect:[UIVibrancyEffect effectForBlurEffect:(UIBlurEffect *)effectView.effect]];
    //2.设定尺寸
    subEffectView.frame = effectView.bounds;
    //3.将子模糊view添加到effectView的contentView才能够生效
    [effectView.contentView addSubview:subEffectView];
    //4.添加要显示的view来达到特殊的效果
    [subEffectView.contentView addSubview:lable];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
