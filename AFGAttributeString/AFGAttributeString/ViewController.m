//
//  ViewController.m
//  AFGAttributeString
//
//  Created by 邹永进 on 2017/11/22.
//  Copyright © 2017年 zouyj. All rights reserved.
//

#import "ViewController.h"

/**< 以下两个文件最好在工程的.pch文件中导入 */
#import "NSMutableAttr+Chain/NSMutableAttributedString+Chain.h"
#import "AFGAttributeHelper.h"

/**<屏幕宽度*/
#define SCREEN_WIDTH    [UIScreen mainScreen].bounds.size.width
/**<屏幕高度*/
#define SCREEN_HEIGHT   [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
/**< label */
@property (nonatomic, strong) UILabel *explainLabel;
@end

@implementation ViewController

/**< 生命周期 */
#pragma mark ***** Life Cycle *****
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addViews];
}

/**< UI 添 加 */
#pragma mark ***** UI *****

- (void)addViews {
    [self.view addSubview:self.explainLabel];
}

/**< GET模块 */
#pragma mark ***** Getter *****

- (UILabel *)explainLabel {
    if (!_explainLabel) {
        UILabel *label = [UILabel new];
        label.frame = CGRectMake(15, 200, SCREEN_WIDTH-30, 200);
        label.text = @"一年一度的2017维多利亚的秘密内衣大秀在上海举行，不知道勾引的多少直男睡不着，虽然超模奚梦瑶出现摔跤意外事件，但中国天使何穗真的又一次美到了！于是今天和你们扒一扒这位维密天使！先送你们一个闪电魅眼！";
        label.numberOfLines = 0;
        [label sizeToFit];
        _explainLabel = label;
    }
    return _explainLabel;
}

/**< 事件处理 */
#pragma mark ***** Events *****

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSRange rangeTime = [self.explainLabel.text rangeOfString:@"一年一度的2017"];
    NSRange rangeName = [self.explainLabel.text rangeOfString:@"何穗"];
    self.explainLabel.textColor = [UIColor redColor];
    self.explainLabel.font = [UIFont systemFontOfSize:11];
    
    /**< 链式编程，设置label的富文本属性 */
    self.explainLabel.attributedText = [NSMutableAttributedString makeAttrConfigure:^(AFGAttributeHelper *helper) {
        helper.afgString(self.explainLabel.text).afgColor([UIColor greenColor],rangeTime).afgColor([UIColor greenColor],rangeName).afgFont([UIFont systemFontOfSize:30],rangeTime);
    }];
}

@end


