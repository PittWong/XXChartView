# XXChartView
好用的统计图,折线统计图,柱状统计图

####pod引用方式

pod 'XXChartView', :git => 'https://github.com/PittWong/XXChartView.git'

####使用说明
提供快捷创建方法,传入对应参数快速生成统计图
还可通过tintColor设置喜欢的颜色

```
- (instancetype)initWithValues:(NSArray *)values xTittles:(NSArray *)xTittles yTittleCount:(NSInteger)yTittleCount;
+ (instancetype)chartViewWithValues:(NSArray *)values xTittles:(NSArray *)xTittles yTittleCount:(NSInteger)yTittleCount;
```
####折线统计图,柱状图

![6864D13F-7399-41CF-A956-4A0D2568DAEE.png](http://upload-images.jianshu.io/upload_images/2103008-39f7340e3654d312.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


