# XWCountryCode
国家代码,国际区号,注册登录选择国家

演示效果:

![](https://github.com/qxuewei/XWCountryCode/raw/master/GIF/XWcountryGif.gif)  

三行代码集成国家区号选择功能

<br>1.导入XWCountryCode类</br>
<br>2.在需要选择国家代码的事件中
<code><pre>
  XWCountryCodeController *CountryCodeVC = [[XWCountryCodeController alloc] init];
    //CountryCodeVC.deleagete = self;
    //block
    [CountryCodeVC toReturnCountryCode:^(NSString *countryCodeStr) {
        //在此处实现最终选择后的界面处理
        [self.countryCodeLB setText:countryCodeStr];
    }];
    [self presentViewController:CountryCodeVC animated:YES completion:nil];
</code></pre>

界面传值提供了代理和block两种方式,自由选择
