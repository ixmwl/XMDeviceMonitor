//
//  XMNavigationController.m
//  XMDeviceMonitor
//
//  Created by 刘灿 on 2019/12/26.
//Copyright © 2019 ixmwl. All rights reserved.
//

#import "XMNavigationController.h"

@interface XMNavigationController ()

@end

@implementation XMNavigationController
#pragma mark - LifeCycle

- (void)dealloc {
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}


-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0 ){
        
        viewController.hidesBottomBarWhenPushed = true;
    }
    [super pushViewController:viewController animated:animated];
}


//返回导航控制器的顶层视图控制器的自动旋转属性，因为导航控制器是以栈的原因叠加VC的
//topViewController是其最顶层的视图控制器，
-(BOOL)shouldAutorotate{
    return self.topViewController.shouldAutorotate;
}

//支持哪些屏幕方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [self.topViewController supportedInterfaceOrientations];
}

//默认方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return [self.topViewController preferredInterfaceOrientationForPresentation];
}

@end
