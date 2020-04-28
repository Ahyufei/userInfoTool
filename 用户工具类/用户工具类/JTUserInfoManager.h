//
//  JTUserInfoManager.h
//  DC
//
//  Created by 张玉飞 on 2020/4/28.
//  Copyright © 2020 张玉飞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JTUserInfoManager : NSObject
@property (nonatomic, copy) NSString *mobile;
@property (nonatomic, copy) NSString *token;

/**单例*/
+ (instancetype)shared;
/**通过单例模式对工具类进行初始化*/
+ (void)saveInfo:(NSDictionary *)infoDict;
/**用户退出登录的操作*/
+ (void)loginOut;
@end

NS_ASSUME_NONNULL_END
