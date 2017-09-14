简书链接：http://www.jianshu.com/p/13820dbf5d20
###  ios 圆角 cornerRadius 对性能的影响究竟多大？ 你测试过吗？

网上对”圆角设置“ 有很多说法，没有统一的说法，还有面试的时候被问到，所以今天打算 亲自试验下
#### 项目
步骤，新建一个项目，新建2个ViewController ①一个正常显示无圆角，②一个圆角显示 ，然后在对比 frame per second 。
我项目里设置的 row 行数 是 10000 行。每行 5 张图片UIButton

项目环境： Xcode8.3.3  swift3  真机iPhone7
项目截图 

![首页](http://upload-images.jianshu.io/upload_images/2384741-f661d426ae5e5220.PNG?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

![正常无圆角](http://upload-images.jianshu.io/upload_images/2384741-c0433ca1e2bccd4f.PNG?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)


![圆角](http://upload-images.jianshu.io/upload_images/2384741-bdf2e7c1829cdc23.PNG?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)





#### Instrument 测试性能
在Instrument 里选择 Core Animation.

![image.png](http://upload-images.jianshu.io/upload_images/2384741-fa70f6f0685beef3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

选择Debug Options - Color offscreen- Rendered Yellow 

![image.png](http://upload-images.jianshu.io/upload_images/2384741-64880234ba37da15.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

运行........

###### 1.正常 无圆角 Frames Per Second 大概是50多。下方截图 ↓

![正常无圆角 效果图](http://upload-images.jianshu.io/upload_images/2384741-c0433ca1e2bccd4f.PNG?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

![image.png](http://upload-images.jianshu.io/upload_images/2384741-34d6e9add9bd806b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

###### 2.圆角  Frames Per Second 大概是50多。下方截图 ↓

![圆角 效果图](http://upload-images.jianshu.io/upload_images/2384741-bdf2e7c1829cdc23.PNG?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

![image.png](http://upload-images.jianshu.io/upload_images/2384741-3a37fdfd4f17bc17.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

测试代码地址：https://github.com/lizhi0123/CornerRadiusTest

 #### 总结：正常无圆角 和 圆角的情况下  Frames Per Second 都是 大概是50多 ，个人认为：这能说明 Conrer 现在对性能的影响 没有像网上说的那么大。
本人知识有限，请大家纠正。大家是什么看法呢？
