# XMDeviceMonitor

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
导入头文件

```
#import "XMDeviceMonitor.h"
```
遵从代理协议

```
@interface XMTestViewController ()<XMDeviceMonitorDelegate>
{
    XMDeviceMonitor *monitor;
}
```

初始化

```
monitor = [[XMDeviceMonitor alloc] initWithDelegate:self];

// 如果需要某个单独页面旋转，在进入和退出进行开启和关闭
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [monitor startMonitor];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [monitor stop];
}
```

代理实现


```
-(void)directionChange:(UIInterfaceOrientation)direction{
    [self interfaceOrientation:direction];
}

// 此处是人为去设置页面的方向
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

```

## 关于屏幕旋转

[传送门](https://ixmwl.github.io/2019/12/10/iOS开发/iOS屏幕旋转Get了吗？/)

## Requirements

## Installation

XMDeviceMonitor is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'XMDeviceMonitor'
```

## Author

ixmwl, ixmwl510@163.com

## License

XMDeviceMonitor is available under the MIT license. See the LICENSE file for more info.


