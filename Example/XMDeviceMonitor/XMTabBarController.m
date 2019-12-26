//
//  XMTabBarController.m
//  
//
//  Created by 刘灿 on 2019/12/26.
//
//

#import "XMTabBarController.h"
#import "XMRoateViewController.h"
#import "XMNavigationController.h"
@interface XMTabBarController ()

@end

@implementation XMTabBarController
#pragma mark - LifeCycle

- (void)dealloc {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    XMRoateViewController *vc = [[XMRoateViewController alloc] init];
    XMNavigationController *nav = [[XMNavigationController alloc] initWithRootViewController:vc];
    
    vc.tabBarItem.title =@"旋转";
    
    self.viewControllers = @[nav];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

//是否自动旋转
-(BOOL)shouldAutorotate{
    return self.selectedViewController.shouldAutorotate;
}

//支持哪些屏幕方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [self.selectedViewController supportedInterfaceOrientations];
}

//默认方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}

@end
