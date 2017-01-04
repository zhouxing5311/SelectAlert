# ZZSelectAlert

UITableView实现的表单选框。可以选择显示关闭按钮取消选择或者点击视图外侧取消选择。</br>


<h2>使用方法:</h2>
ZZSelectAlert拷贝至项目工程，导入ZZSelectAlert.h。</br>
        
<h3>类方法直接显示到UIWindow:</h3>
```Objective-c

[ZZSelectAlert showWithTitle:@"标题" titles:@[@"标题1",@"标题2",@"标题3",@"标题4"] selectIndex:^(NSInteger selectIndex) {
NSLog(@"选择的index:%ld",selectIndex);
} selectValue:^(NSString *selectValue) {
NSLog(@"选择的文本:%@",selectValue);
} showCloseButton:YES];

```
<h3>特色功能:</h3>
1.两种关闭方式。通过点击视图外侧自动关闭，或者通过关闭按钮关闭弹框。</br>
2.弹出框高度会自动适配屏幕。单条item高度超过5条数据时高度为40，否则为50。</br>
3.使用方便，直接通过类方法传入需要选择的文字数组即可。通过block回调index和value。</br>

<h2>效果展示:</h3>

![image](https://github.com/zhouxing5311/ZZSelectAlert/blob/master/ZZSelectAlert.gif) 


没什么技术难度，只是对UITableView进行了简单的封装，实用性还可以。
                  
