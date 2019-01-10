//
//  SecViewController.m
//  TestRelease
//
//  Created by Noah on 2019/1/10.
//  Copyright © 2019 fx. All rights reserved.
//

#import "SecViewController.h"

@interface SecViewController ()

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"~~~~~~~~~~~~~~~~~~~~%@ ---- %@",NSStringFromClass([self class]), NSStringFromSelector(_cmd));
//    NSLog(@"parentViewController: ---- %@",NSStringFromClass([self.parentViewController class]));
//    NSLog(@"parentContainerViewController: ---- %@",NSStringFromClass([self.parentContainerViewController class]));
}

- (void)dealloc {
    NSLog(@"~~~~~~~~~~~~~~~~~~~~%@ ---- %@",NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
