//
//  AFGAttributeHelper.m
//  AIphaGo
//
//  Created by 邹永进 on 2017/11/21.
//  Copyright © 2017年 Macx. All rights reserved.
//

#import "AFGAttributeHelper.h"

@interface AFGAttributeHelper ()
/**< range */
@property (nonatomic, assign) NSRange range;

@end

@implementation AFGAttributeHelper
/**< 创建文本属性 */
- (AFGAttributeHelper *(^)(NSString *))afgString {
    return ^(NSString *string){
        if ([string isKindOfClass:[NSString class]]) {
            self.attString = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@",string]];
        }
//        NSCAssert(range.location+range.length > string.length, @"range越界", range);
        return self;
    };
}

/**< 字体颜色 */
- (AFGAttributeHelper *(^)(UIColor *, NSRange range))afgColor {
    return ^(UIColor *color, NSRange range){
        [self.attString addAttribute:NSForegroundColorAttributeName
                        value:color
                        range:range];
        return self;
    };
}

/**< 字体背景颜色 */
- (AFGAttributeHelper *(^)(UIColor *color, NSRange range))afgBackgroundColor {
    return ^(UIColor *color, NSRange range){
        [self.attString addAttribute:NSBackgroundColorAttributeName
                               value:color
                               range:range];
        return self;
    };
}

/**< 设置字体 */
- (AFGAttributeHelper *(^)(UIFont *, NSRange range))afgFont {
    return ^(UIFont *font, NSRange range){
        [self.attString addAttribute:NSFontAttributeName
                               value:font
                               range:range];
        return self;
    };
}

/**< 空心字 : 描边颜色， 描边宽度 */
- (AFGAttributeHelper *(^)(UIColor *color, CGFloat width, NSRange range))afgStroke {
    return ^(UIColor *color, CGFloat width, NSRange range){
        [self.attString addAttribute:NSStrokeColorAttributeName
                               value:color
                               range:range];  // 设置描边颜色 要和NSStrokeWidthAttributeName设置描边宽度一起使用
        [self.attString addAttribute:NSStrokeWidthAttributeName
                               value:[NSNumber numberWithFloat:width]
                               range:range];
        return self;
    };
}

/**< 间距 */
- (AFGAttributeHelper *(^)(CGFloat kern, NSRange range))afgKern {
    return ^(CGFloat kern, NSRange range){
        [self.attString addAttribute:NSKernAttributeName
                               value:[NSNumber numberWithFloat:kern]
                               range:range];
        return self;
    };
}

/**< 倾斜 */
- (AFGAttributeHelper *(^)(CGFloat obliqueness, NSRange range))afgObliqueness {
    return ^(CGFloat obliqueness, NSRange range){
        [self.attString addAttribute:NSObliquenessAttributeName
                               value:[NSNumber numberWithFloat:obliqueness]
                               range:range];
        return self;
    };
}

/**< 特效 */
- (AFGAttributeHelper *(^)(NSTextEffectStyle style, NSRange range))afgStyle {
    return ^(NSTextEffectStyle style, NSRange range){
        [self.attString addAttribute:NSTextEffectAttributeName
                               value:style
                               range:range];
        return self;
    };
}

@end
