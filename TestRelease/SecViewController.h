//
//  SecViewController.h
//  TestRelease
//
//  Created by Noah on 2019/1/10.
//  Copyright © 2019 fx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecViewController : UIViewController

@property (weak, nonatomic) TestViewController *parentContainerViewController;

@end

NS_ASSUME_NONNULL_END
