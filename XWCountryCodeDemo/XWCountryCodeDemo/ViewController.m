//
//  ViewController.m
//  XWCountryCodeDemo
//
//  Created by 邱学伟 on 2018/10/30.
//  Copyright © 2018 邱学伟. All rights reserved.
//

#import "ViewController.h"
#import "XWCountryCodeController.h"

@interface ViewController () <XWCountryCodeControllerDelegate> {
    
    __weak IBOutlet UILabel *showCodeLB;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"国家代码演示Demo";
}

- (IBAction)countryCode:(UIButton *)sender {
    
    XWCountryCodeController *countryCodeVC = [[XWCountryCodeController alloc] init];
//    countryCodeVC.deleagete = self;
    
    __weak __typeof(self)weakSelf = self;
    countryCodeVC.returnCountryCodeBlock = ^(NSString *countryName, NSString *code) {
        __strong __typeof(weakSelf) strongSelf = weakSelf;
        strongSelf->showCodeLB.text = [NSString stringWithFormat:@"国家: %@  代码: %@",countryName,code];
    };

    [self.navigationController pushViewController:countryCodeVC animated:YES];
//    [self presentViewController:countryCodeVC animated:YES completion:nil];
}

#pragma mark - XWCountryCodeControllerDelegate
- (void)returnCountryName:(NSString *)countryName code:(NSString *)code {
    showCodeLB.text = [NSString stringWithFormat:@"国家: %@  代码: %@",countryName,code];
}


@end
