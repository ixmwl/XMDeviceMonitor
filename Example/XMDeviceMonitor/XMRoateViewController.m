//
//  XMRoateViewController.m
//  XMDeviceMonitor
//
//  Created by 刘灿 on 2019/12/26.
//Copyright © 2019 ixmwl. All rights reserved.
//

#import "XMRoateViewController.h"

@interface XMRoateViewController ()

@end

@implementation XMRoateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clickAction:(id)sender {
    [self.navigationController pushViewController:[NSClassFromString(@"XMTestViewController") new] animated:YES];
}

@end
