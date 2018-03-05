//
//  DemoViewController.m
//  05--循环引用
//
//  Created by dou on 17/6/5.
//  Copyright © 2017年 dou. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()
@property (nonatomic,copy) void (^completionCallback)();

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //解除引用1: __weak
    __weak typeof(self) weakSelf = self;
    
    //解除引用2: __unsafe_unretain
    //同样是对 assign引用, 会出现野指针问题
    //在MRC中使用弱引用对象都是使用assign,不会引用计数,但对象一旦释放,地址不会改变,继续访问,出现也指针
    //在ARC weak,本质上是一个观察者模式,一旦对象被释放,会自动将地址设置为nil,更加安全
    
    //效率上: weak的效率会略微差一些!
//    __unsafe_unretained typeof(self) weakSelf = self;

    [self loadData:^{
        NSLog(@"%@",weakSelf.view);
    }];
}

- (void)loadData:(void (^)())completion {
    
    self.completionCallback = completion;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        sleep(2);
        dispatch_async(dispatch_get_main_queue(), ^{
            
            completion();
            
        });
    });
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
