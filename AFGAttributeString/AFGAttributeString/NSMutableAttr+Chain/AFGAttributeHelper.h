//
//  AFGAttributeHelper.h
//  AIphaGo
//
//  Created by 邹永进 on 2017/11/21.
//  Copyright © 2017年 Macx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AFGAttributeHelper : NSObject
/**< 富文本属性 */
@property (nonatomic, strong) NSMutableAttributedString *attString;


/**< 创建文本属性 */
- (AFGAttributeHelper *(^)(NSString *string))afgString;

/**< 字体颜色 */
- (AFGAttributeHelper *(^)(UIColor *color, NSRange range))afgColor;

/**< 字体背景颜色 */
- (AFGAttributeHelper *(^)(UIColor *color, NSRange range))afgBackgroundColor;

/**< 设置字体 */
- (AFGAttributeHelper *(^)(UIFont *font, NSRange range))afgFont;

/**< 空心字 : 描边颜色， 描边宽度 */
- (AFGAttributeHelper *(^)(UIColor *color, CGFloat width, NSRange range))afgStroke;

/**< 间距 */
- (AFGAttributeHelper *(^)(CGFloat kern, NSRange range))afgKern;

/**< 倾斜 */
- (AFGAttributeHelper *(^)(CGFloat obliqueness, NSRange range))afgObliqueness;

/**< 特效 */
- (AFGAttributeHelper *(^)(NSTextEffectStyle style, NSRange range))afgStyle;
@end
