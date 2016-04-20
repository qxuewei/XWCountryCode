//
//  ViewController.m
//  XWCountryCodeDemo
//
//  Created by 邱学伟 on 16/4/19.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

#import "ViewController.h"
#import "XWCountryCodeController.h"

@interface ViewController ()<XWCountryCodeControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *countryCodeLB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)countryCode:(UIButton *)sender {
    NSLog(@"进入选择国际代码界面");
    XWCountryCodeController *CountryCodeVC = [[XWCountryCodeController alloc] init];
    CountryCodeVC.deleagete = self;
    
    //block
    [CountryCodeVC toReturnCountryCode:^(NSString *countryCodeStr) {
        [self.countryCodeLB setText:countryCodeStr];
    }];
    
    [self presentViewController:CountryCodeVC animated:YES completion:nil];
}

//1.代理传值
#pragma mark - XWCountryCodeControllerDelegate
-(void)returnCountryCode:(NSString *)countryCode{
    [self.countryCodeLB setText:countryCode];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
