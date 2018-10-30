# XWCountryCode
国家代码,国际区号,注册登录选择国家

演示效果:

![](https://github.com/qxuewei/XWCountryCode/raw/master/GIF/XWcountryGif.gif)  

三行代码集成国家区号选择功能


```objc
    XWCountryCodeController *countryCodeVC = [[XWCountryCodeController alloc] init];

    /// 使用代理回调
    //    countryCodeVC.deleagete = self;
    
    
    /// 使用 Block 回调
    __weak __typeof(self)weakSelf = self;
    countryCodeVC.returnCountryCodeBlock = ^(NSString *countryName, NSString *code) {
        __strong __typeof(weakSelf) strongSelf = weakSelf;
        strongSelf->showCodeLB.text = [NSString stringWithFormat:@"国家: %@  代码: %@",countryName,code];
    };

    [self.navigationController pushViewController:countryCodeVC animated:YES];

```

#### 更新 - 2019.10.30
* UISearchController 替换 UISearchDisplayController 实现搜索


