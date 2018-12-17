
#import "RNQrcodeGen.h"


@implementation RNQrcodeGenManager


+(BOOL)requiresMainQueueSetup {
    return YES;
}


-(id)init {
    self = [super init];
    _qrcodeGenView = [[RNQrcodeGenView alloc] init];
    
    return self;
}


RCT_EXPORT_MODULE()

RCT_CUSTOM_VIEW_PROPERTY(value, NSString, RNQrcodeGenView)
{
    [_qrcodeGenView encode:json];
}

- (UIView *)view
{
    return _qrcodeGenView;
}

@end

