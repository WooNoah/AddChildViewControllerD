//
//  TestViewController.m
//  TestRelease
//
//  Created by Noah on 2019/1/10.
//  Copyright © 2019 fx. All rights reserved.
//

#import "TestViewController.h"
#import "SecViewController.h"

@interface TestViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *firstBtnTopMarginConstraint;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.firstBtnTopMarginConstraint.constant -= 100;
}

- (IBAction)firstTimeClick:(id)sender {
    NSArray *arr = @[@"1",@"2",@"3",@"4"];
    [self configureWithData:arr];
}

- (IBAction)twiceTimeClick:(id)sender {
    NSArray *arr = @[@"1",@"2",@"3",@"4"];
    [self configureWithData:arr];
}

- (void)configureWithData:(NSArray *)array{
    if (!array.count) return;
    
    
    NSLog(@"~~~~~~~~~~~~~~~~~~~~%@ ---- %@ 前",NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    [self.childViewControllers makeObjectsPerformSelector:@selector(removeFromParentViewController)];
    NSLog(@"~~~~~~~~~~~~~~~~~~~~%@ ---- %@ 后",NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    

    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        SecViewController *listVC = [[SecViewController alloc] init];
        listVC.view.frame = self.view.bounds;
        listVC.parentContainerViewController = self;
        [self addChildViewController:listVC];
//        [listVC didMoveToParentViewController:self];
    }];
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
