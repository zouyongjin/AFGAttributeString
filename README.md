# AFGAttributeString
链式编程 富文本属性
# AFGAttributeString

#### 简介

* 通过链式编程设置label的富文本属性


#### 注意

* 将NSMutableAttr+Chain 文件夹拖入工程
* 在工程.pch文件导入头文件

``` 
#import "NSMutableAttr+Chain/NSMutableAttributedString+Chain.h"
#import "AFGAttributeHelper.h"

```


#### 代码示例

```
    NSRange rangeTime = [self.explainLabel.text rangeOfString:@"一年一度的2017"];
    NSRange rangeName = [self.explainLabel.text rangeOfString:@"何穗"];
    /**< 链式编程，设置label的富文本属性 */
    self.explainLabel.attributedText = [NSMutableAttributedString makeAttrConfigure:^(AFGAttributeHelper *helper) {
        helper.afgString(self.explainLabel.text).afgColor([UIColor greenColor],rangeTime).afgColor([UIColor greenColor],rangeName).afgFont([UIFont systemFontOfSize:30],rangeTime);
    }];
```


#### demo

* 更多细节详见demo
