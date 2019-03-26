//
//  SKTabbarViewController.m
//  SKTargetAction
//
//  Created by 赵申侃 on 2019/3/26.
//  Copyright © 2019 赵申侃. All rights reserved.
//

#import "SKTabbarViewController.h"
#import <SKTest1ViewController.h>
#import <SKTest4ViewController.h>

@interface SKTabbarViewController ()

@end

@implementation SKTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SKTest1ViewController *test1 = [[SKTest1ViewController alloc] init];
    SKTest4ViewController *test2 = [[SKTest4ViewController alloc] init];    
    [self addOneChildVc:test1 title:@"test1"];
    [self addOneChildVc:test2 title:@"test2"];

}

- (void)addOneChildVc:(UIViewController *)childVc title:(NSString *)title
{
    childVc.title = title;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
}

@end
