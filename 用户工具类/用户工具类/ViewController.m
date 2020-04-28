//
//  ViewController.m
//  用户工具类
//
//  Created by 张玉飞 on 2020/4/28.
//  Copyright © 2020 张玉飞. All rights reserved.
//

#import "ViewController.h"
#import "JTUserInfoManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *info = @{
        @"mobile" : @"13811112222",
        @"token" : @"token"
    };

    [JTUserInfoManager saveInfo:info];
    
    // 修改某一个值
    // [[JTUserInfoManager shared] setMobile:@"1380000000"];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSString *mobile = [[JTUserInfoManager shared] mobile];
    NSString *token = [[JTUserInfoManager shared] token];
    NSLog(@"%@=%@",mobile, token);
}

@end
