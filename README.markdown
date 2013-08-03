Qiita - ナビゲーションバーに UIBarButtonItem を2つ並べる  
[http://qiita.com/haruhatahiko/items/2b1facc940fbffb68ee6](http://qiita.com/haruhatahiko/items/2b1facc940fbffb68ee6)

- - -

![Qiita_SampleUIBarButtonItems.png](https://qiita-image-store.s3.amazonaws.com/0/431/e1a76223-c25e-2042-9005-4ead43156431.png)

ナビゲーションバーの左側を別の用途で使いたかった為、  
右側に UIBarButtonItem を2つ並べる。

##適用方法

```objc:ViewController.m
UIBarButtonItem *searchBtn = [[UIBarButtonItem alloc]
initWithBarButtonSystemItem:UIBarButtonSystemItemSearch
target:self
action:@selector(eventSearchBtn:)];
searchBtn.tintColor = [UIColor redColor];
    
UIBarButtonItem *refreshBtn = [[UIBarButtonItem alloc]
initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh
target:self
action:@selector(eventRefreshBtn:)];
refreshBtn.tintColor = [UIColor redColor];
    
self.navigationItem.rightBarButtonItems =
[NSArray arrayWithObjects:searchBtn, refreshBtn, nil];
```

##サンプルプロジェクト
 [https://github.com/haruhatahiko/SampleUIBarButtonItems](https://github.com/haruhatahiko/SampleUIBarButtonItems)
