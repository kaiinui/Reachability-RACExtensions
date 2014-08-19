Reachability-RACExtensions
==========================

![](http://img.shields.io/cocoapods/v/Reachability-RACExtensions.svg?style=flat)

```objc
+ (RACSignal *)rac_reachabilitySignal; // (Reachability *)
```

```objc
[[Reachability rac_reachabilitySignal] subscribeNext:^(Reachability *reach) {
    NSLog(@"%hhd", reach.isReachable);
    NSLog(@"%hhd", reach.isReachableViaWiFi);
}];
```

It will send a signal when reachability is changed. (typically when disconnected, connected.)

Installation
---

`pod 'Reachability-RACExtensions'`

:sushi:

LICENSE
---

The MIT License (MIT)

Copyright (c) 2014 kaiinui

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
