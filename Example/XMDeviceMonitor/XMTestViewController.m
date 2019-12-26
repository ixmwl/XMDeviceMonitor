//
//  XMTestViewController.m
//  XMDeviceMonitor
//
//  Created by 刘灿 on 2019/12/26.
//  Copyright © 2019 ixmwl. All rights reserved.
//  此时如果控制中心屏幕被锁定，只实现
// //是否自动旋转
// -(BOOL)shouldAutorotate{
//    return YES;
// }
////支持哪些屏幕方向
// - (UIInterfaceOrientationMask)supportedInterfaceOrientations {
//    return UIInterfaceOrientationMaskAll;
// }
//
////默认方向
// - (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
//    return UIInterfaceOrientationPortrait;
// }
// 这几个方法是无法完成旋转的，那么借助CoreMotion可以去检测设备旋转状态，代码去h控制页面的横竖屏切换


#import "XMTestViewController.h"
#import "XMDeviceMonitor.h"


@interface XMTestViewController ()<XMDeviceMonitorDelegate>
{
    XMDeviceMonitor *monitor;
}
@end

@implementation XMTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    monitor = [[XMDeviceMonitor alloc] initWithDelegate:self];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [monitor startMonitor];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [monitor stop];
}
-(void)directionChange:(UIInterfaceOrientation)direction{
    [self interfaceOrientation:direction];
}

- (void)interfaceOrientation:(UIInterfaceOrientation)orientation {
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector             = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int val                  = orientation;
        [invocation setArgument:&val atIndex:2];
        [invocation invoke];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//是否自动旋转
-(BOOL)shouldAutorotate{
    return YES;
}
//支持哪些屏幕方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

//默认方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
}

@end
