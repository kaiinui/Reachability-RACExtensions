#import <Reachability.h>

@class RACSignal;

@interface Reachability (ReactiveCocoa)

+ (RACSignal *)rac_reachabilitySignal;

@end
