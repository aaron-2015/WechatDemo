//
//  loginViewController.m
//  WechatDemo
//
//  Created by aaron on 16/3/27.
//  Copyright © 2016年 decai wang. All rights reserved.
//

#import "LoginViewController.h"
#import "GlobalMacros.h"
#import "UIImageView+WebCache.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *headView;
@property (weak, nonatomic) IBOutlet UILabel *nickName;
@property (weak, nonatomic) IBOutlet UILabel *accessToken;
@property (weak, nonatomic) IBOutlet UILabel *openID;
@property (weak, nonatomic) IBOutlet UILabel *refreshToken;
@property (weak, nonatomic) IBOutlet UILabel *unionID;

@end

@implementation LoginViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    NSString *headString = [[NSUserDefaults standardUserDefaults] objectForKey:HEAD_IMG_URL];
    [_headView sd_setImageWithURL:[NSURL URLWithString:headString]];
    _nickName.text = [[NSUserDefaults standardUserDefaults] objectForKey:NICK_NAME];
    _accessToken.text = [[NSUserDefaults standardUserDefaults] objectForKey:WX_ACCESS_TOKEN];
    _openID.text = [[NSUserDefaults standardUserDefaults] objectForKey:WX_OPEN_ID];
    _refreshToken.text = [[NSUserDefaults standardUserDefaults] objectForKey:WX_REFRESH_TOKEN];
    _unionID.text = [[NSUserDefaults standardUserDefaults] objectForKey:WX_UNION_ID];
}


@end
