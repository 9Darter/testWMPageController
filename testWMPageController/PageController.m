//
//  PageController.m
//  testWMPageController
//
//  Created by 璠 王 on 2016/12/16.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "PageController.h"
#import "RedViewController.h"
#import "BlueViewController.h"
@interface PageController ()
@property(nonatomic, copy) NSArray *array;
@end

@implementation PageController
-(NSArray *)array {
    if (!_array) {
        _array = @[[RedViewController new], [BlueViewController new]];
    }
    return _array;
}

- (NSArray<NSString *> *)titles{
    return @[@"聊天", @"排行"];
}
-(UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index{
    return self.array[index];
}

- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController{
    return self.titles.count;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.menuViewStyle = WMMenuViewStyleLine;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
