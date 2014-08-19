#import "Reachability+ReactiveCocoa.h"
#import <ReactiveCocoa.h>

@implementation Reachability (ReactiveCocoa)

+ (RACSignal *)rac_reachabilitySignal {
    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        Reachability *reach = [Reachability reachabilityForInternetConnection];
        reach.reachableBlock = ^(Reachability *reach) {
            [subscriber sendNext:reach];
        };
        reach.unreachableBlock = ^(Reachability *reach) {
            [subscriber sendNext:reach];
        };
        [reach startNotifier];
        
        return nil;
    }];
}

@end
