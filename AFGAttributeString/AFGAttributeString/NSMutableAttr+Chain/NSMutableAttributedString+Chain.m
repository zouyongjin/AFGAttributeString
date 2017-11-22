//
//  NSMutableAttributedString+Chain.m
//  AIphaGo
//
//  Created by 邹永进 on 2017/11/21.
//  Copyright © 2017年 Macx. All rights reserved.
//

#import "NSMutableAttributedString+Chain.h"
#import "AFGAttributeHelper.h"

@implementation NSMutableAttributedString (Chain)

+ (instancetype)makeAttrConfigure:(void (^)(AFGAttributeHelper *))helper {
    AFGAttributeHelper *attriHelper = [AFGAttributeHelper new];
    !helper ? : helper(attriHelper);
    return attriHelper.attString;
}

@end
