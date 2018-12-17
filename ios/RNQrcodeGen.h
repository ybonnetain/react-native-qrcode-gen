
#import <React/RCTViewManager.h>

#ifdef __OBJC__
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#endif

#import "RNQrcodeGen-Swift.h"


@interface RNQrcodeGenManager : RCTViewManager

@property (nonatomic, retain) RNQrcodeGenView *qrcodeGenView;

@end


@interface RNQrcodeGenView ()

@end

