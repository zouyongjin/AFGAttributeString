//
//  NSMutableAttributedString+Chain.h
//  AIphaGo
//
//  Created by 邹永进 on 2017/11/21.
//  Copyright © 2017年 Macx. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AFGAttributeHelper;

@interface NSMutableAttributedString (Chain)

+ (instancetype)makeAttrConfigure:(void (^)(AFGAttributeHelper *helper))helper;

@end
