/**
 * 作者：刘灿
 * 创建时间：2019/12/26 11:46
 * 版本：[1.0, 2019/12/26]
 * 版权：江苏国泰新点软件有限公司
 * 描述：<#描述#>
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol XMDeviceMonitorDelegate <NSObject>

- (void)directionChange:(UIInterfaceOrientation)direction;

@end
@interface XMDeviceMonitor : NSObject

@property(nonatomic,strong)id<XMDeviceMonitorDelegate>delegate;

- (instancetype)initWithDelegate:(id<XMDeviceMonitorDelegate>)delegate;
/**
 开启监听
 */
- (void)startMonitor;
/**
 结束监听，请stop
 */
- (void)stop;

@end
